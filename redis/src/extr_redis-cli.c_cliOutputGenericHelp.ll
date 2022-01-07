; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliOutputGenericHelp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliOutputGenericHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [385 x i8] c"redis-cli %s\0ATo get help about Redis commands type:\0A      \22help @<group>\22 to get a list of commands in <group>\0A      \22help <command>\22 for help on <command>\0A      \22help <tab>\22 to get a list of possible help topics\0A      \22quit\22 to exit\0A\0ATo set redis-cli preferences:\0A      \22:set hints\22 enable online hints\0A      \22:set nohints\22 disable online hints\0ASet your preferences in ~/.redisclirc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cliOutputGenericHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliOutputGenericHelp() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @cliVersion()
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([385 x i8], [385 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @sdsfree(i8* %5)
  ret void
}

declare dso_local i8* @cliVersion(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
