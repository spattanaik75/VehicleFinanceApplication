package za.co.reverside.vehiclefinance;

import javax.xml.ws.WebServiceException;

/**
 * Vehicle finance affordability web service
 * interface
 * 
 * @author Tsepo Maleka
 */
public interface IVehicleFinanceAffordabilityService {
    
    public boolean determineIfCustomerAffordsVehicleFinancing()
            throws WebServiceException;
    public double getMaximumAllowedLoanAmount()
            throws WebServiceException;
    
}
