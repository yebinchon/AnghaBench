; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/noexecute/extr_noexecute.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/noexecute/extr_noexecute.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"NoExecute\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Executing within the code segment\00", align 1
@data = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Executing within the data segment\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Executing on stack segment\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Executing on the heap with protection PAGE_READWRITE\00", align 1
@PAGE_EXECUTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Executing on the heap with protection PAGE_EXECUTE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @execute(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* @test)
  %7 = load i8*, i8** @data, align 8
  %8 = call i32 @memcpy(i8* %7, i32 (i32)* @test, i32 100)
  %9 = load i8*, i8** @data, align 8
  %10 = bitcast i8* %9 to i32 (i32)*
  %11 = call i32 @execute(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* %10)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %13 = call i32 @memcpy(i8* %12, i32 (i32)* @test, i32 100)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %15 = bitcast i8* %14 to i32 (i32)*
  %16 = call i32 @execute(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* %15)
  %17 = load i32, i32* @MEM_COMMIT, align 4
  %18 = load i32, i32* @PAGE_READWRITE, align 4
  %19 = call i8* @VirtualAlloc(i32* null, i32 100, i32 %17, i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @memcpy(i8* %20, i32 (i32)* @test, i32 100)
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to i32 (i32)*
  %24 = call i32 @execute(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @PAGE_EXECUTE, align 4
  %27 = call i32 @VirtualProtect(i8* %25, i32 100, i32 %26, i32* %4)
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i32 (i32)*
  %30 = call i32 @execute(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* %29)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @execute(i8*, i32 (i32)*) #1

declare dso_local i32 @test(i32) #1

declare dso_local i32 @memcpy(i8*, i32 (i32)*, i32) #1

declare dso_local i8* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @VirtualProtect(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
