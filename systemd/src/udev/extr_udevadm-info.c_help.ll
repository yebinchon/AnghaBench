; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_help.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1265 x i8] c"%s info [OPTIONS] [DEVPATH|FILE]\0A\0AQuery sysfs or the udev database.\0A\0A  -h --help                   Print this message\0A  -V --version                Print version of the program\0A  -q --query=TYPE             Query device information:\0A       name                     Name of device node\0A       symlink                  Pointing to node\0A       path                     sysfs device path\0A       property                 The device properties\0A       all                      All values\0A  -p --path=SYSPATH           sysfs device path used for query or attribute walk\0A  -n --name=NAME              Node or symlink name used for query or attribute walk\0A  -r --root                   Prepend dev directory to path names\0A  -a --attribute-walk         Print all key matches walking along the chain\0A                              of parent devices\0A  -d --device-id-of-file=FILE Print major:minor of device containing this file\0A  -x --export                 Export key/value pairs\0A  -P --export-prefix          Export the key name with a prefix\0A  -e --export-db              Export the content of the udev database\0A  -c --cleanup-db             Clean up the udev database\0A  -w --wait-for-initialization[=SECONDS]\0A                              Wait for device to be initialized\0A\00", align 1
@program_invocation_short_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help() #0 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([1265 x i8], [1265 x i8]* @.str, i64 0, i64 0), i8* %1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
