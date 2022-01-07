; ModuleID = '/home/carl/AnghaBench/torch7/extr_MemoryFile.c_torch_MemoryFile_storage.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_MemoryFile.c_torch_MemoryFile_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"torch.MemoryFile\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"torch.CharStorage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @torch_MemoryFile_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torch_MemoryFile_storage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @luaT_checkudata(i32* %4, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @THMemoryFile_storage(i32* %6)
  %8 = call i32 @THCharStorage_retain(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @THMemoryFile_storage(i32* %10)
  %12 = call i32 @luaT_pushudata(i32* %9, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32* @luaT_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @THCharStorage_retain(i32) #1

declare dso_local i32 @THMemoryFile_storage(i32*) #1

declare dso_local i32 @luaT_pushudata(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
