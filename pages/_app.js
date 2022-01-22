import Link from 'next/link'
import '../styles/globals.css'

function MyApp({ Component, pageProps }) {
  return (
    <div>
      <nav className="border-b p-6">
        <p className="text-4xl font-bold">IMT</p>
        <div className="flex mt-4"></div>
        <Link href="/">
          <a className="mr-4 text-blue-500">Home</a>
        </Link>
        <Link href="/create-item">
          <a className="mr-6 text-blue-500">Sell NFT</a>
        </Link>
        <Link href="/my-assets">
          <a className="mr-6 text-blue-500">My NFTs</a>
        </Link>
        <Link href="/dashboard">
          <a className="mr-6 text-blue-500">Dashboard</a>
        </Link>
      </nav>
      <Component {...pageProps} />
    </div>
    
    
  )
}

export default MyApp
