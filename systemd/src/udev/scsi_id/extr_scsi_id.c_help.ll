; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_help.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [745 x i8] c"Usage: %s [OPTION...] DEVICE\0A\0ASCSI device identification.\0A\0A  -h --help                        Print this message\0A     --version                     Print version of the program\0A\0A  -d --device=                     Device node for SG_IO commands\0A  -f --config=                     Location of config file\0A  -p --page=0x80|0x83|pre-spc3-83  SCSI page (0x80, 0x83, pre-spc3-83)\0A  -s --sg-version=3|4              Use SGv3 or SGv4\0A  -b --blacklisted                 Treat device as blacklisted\0A  -g --whitelisted                 Treat device as whitelisted\0A  -u --replace-whitespace          Replace all whitespace by underscores\0A  -v --verbose                     Verbose logging\0A  -x --export                      Print values as environment keys\0A\00", align 1
@program_invocation_short_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([745 x i8], [745 x i8]* @.str, i64 0, i64 0), i8* %1)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
