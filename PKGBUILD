pkgname=xorg-launch-helper
pkgver=r30.e4c5289
pkgrel=1
pkgdesc="A wrapper in C to make XOrg function as a proper systemd unit."
arch=('any')
url="https://github.com/weilbith/xorg-launch-helper"
license=('GPL2')
depends=('xorg-server' 'systemd')
makedepends=('git')
provides=('xorg-launch-helper')
conflicts=('xorg-launch-helper')
source=('git+https://github.com/weilbith/xorg-launch-helper.git')
sha256sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build () {
  cd "$pkgname"
  ./build.sh
}

package() {
  install -D --target-directory="$pkgdir/usr/bin" "$srcdir/$pkgname/build/xorg-launch-helper"
}

# vim: ts=2 sw=2 et:
