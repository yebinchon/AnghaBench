; ModuleID = '/home/carl/AnghaBench/torch7/extr_PipeFile.c_torch_PipeFile___tostring__.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_PipeFile.c_torch_PipeFile___tostring__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"torch.PipeFile\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"torch.PipeFile on <%s> [status: %s -- mode: %c%c]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @torch_PipeFile___tostring__ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torch_PipeFile___tostring__(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @luaT_checkudata(i32* %4, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @THDiskFile_name(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @THFile_isOpened(i32* %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @THFile_isReadable(i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 114, i32 32
  %19 = trunc i32 %18 to i8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @THFile_isWritable(i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 119, i32 32
  %25 = trunc i32 %24 to i8
  %26 = call i32 @lua_pushfstring(i32* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %8, i8* %13, i8 signext %19, i8 signext %25)
  ret i32 1
}

declare dso_local i32* @luaT_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @THDiskFile_name(i32*) #1

declare dso_local i64 @THFile_isOpened(i32*) #1

declare dso_local i64 @THFile_isReadable(i32*) #1

declare dso_local i64 @THFile_isWritable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
