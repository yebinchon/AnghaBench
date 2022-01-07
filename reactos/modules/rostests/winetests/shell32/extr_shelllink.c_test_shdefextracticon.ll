; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_shdefextracticon.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_shdefextracticon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"shell32.dll\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SHDefExtractIconA failed, res=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got null hiconlarge\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"got null hiconsmall\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_shdefextracticon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_shdefextracticon() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %4 = call i32 @MAKELONG(i32 16, i32 24)
  %5 = call i32 @pSHDefExtractIconA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32** %1, i32** %2, i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @SUCCEEDED(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @DestroyIcon(i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @DestroyIcon(i32* %20)
  store i32* null, i32** %2, align 8
  %22 = call i32 @MAKELONG(i32 16, i32 24)
  %23 = call i32 @pSHDefExtractIconA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32** null, i32** %2, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @SUCCEEDED(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @DestroyIcon(i32* %32)
  %34 = call i32 @MAKELONG(i32 16, i32 24)
  %35 = call i32 @pSHDefExtractIconA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32** null, i32** null, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @SUCCEEDED(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @pSHDefExtractIconA(i8*, i32, i32, i32**, i32**, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @DestroyIcon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
