FLASH_CARDS = {
	"awesome" => "slang term used to describe something good",
	"to hang out" => "To get together with friends",
	"chill" => "a term to either to describe being mellow or a way to describe casual fun with friends",
	"to sit tight" => "to wait patiently ",
	"to be under the weather" => "to feel sick",
	"to ring a bell" => "to remind or to sound vaguely familiar",
	"a cop" => "a policeman or law enforcer",
	"to be bummed" => "to be upset",
	"to get fired" => "to be kicked out of your job",
	"to get over something" => "to not care anymore",
	"rule of thumb" => "a personal rule or thing to remember",
	"to have your back" => "to watch out for someone",
	"to get back on your feet" => "to recover",
	"cool" => "slang term to describe something good",
	"rip off" => "to trick someone into an unfair exchange",
}

def random_flashcard_name
	FLASH_CARDS.to_a.sample[0]
end
