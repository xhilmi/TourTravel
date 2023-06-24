<?php 

class database{

	public $_host = "localhost";
		public $_username = "thanos_tour";
		public $_password = "thanos_tour";
		public $_database = "thanos_tour";
		public $_connection;

	
		public function getConnection() {
			$this->_connection = new mysqli($this->_host, $this->_username, 
											$this->_password, $this->_database);
			if ($this->_connection->connect_errno) {
				return $this->_connection->connect_errno;
			}
				return $this->_connection;
		}

	}

	


?>