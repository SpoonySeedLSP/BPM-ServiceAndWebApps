using Microsoft.AspNetCore.Mvc;

namespace MsSystem.Web.Controllers
{
    public class ErrorController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult IE()
        {
            return View();
        }

        /// <summary>
        /// û��Ȩ��
        /// </summary>
        /// <returns></returns>
        public IActionResult NoAuth()
        {
            return View();
        }

        /// <summary>
        /// û�в˵�Ȩ��
        /// </summary>
        /// <returns></returns>
        public IActionResult NoMenu()
        {
            return View();
        }
    }
}