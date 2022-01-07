; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_SETPARAFORMAT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_SETPARAFORMAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PFM_ALL2 = common dso_local global i32 0, align 4
@PFM_TABLEROWDELIMITER = common dso_local global i32 0, align 4
@PFM_ALIGNMENT = common dso_local global i32 0, align 4
@PFA_LEFT = common dso_local global i32 0, align 4
@EM_SETPARAFORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"expected non-zero got %d\0A\00", align 1
@EM_GETPARAFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"expected %x got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"got %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SETPARAFORMAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SETPARAFORMAT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_2__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @new_richedit(i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @PFM_ALL2, align 4
  %7 = load i32, i32* @PFM_TABLEROWDELIMITER, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* %4, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 28, i32* %10, align 4
  %11 = load i32, i32* @PFM_ALIGNMENT, align 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @PFA_LEFT, align 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 6
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @EM_SETPARAFORMAT, align 4
  %17 = ptrtoint %struct.TYPE_2__* %2 to i32
  %18 = call i32 @SendMessageA(i32 %15, i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 28, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @EM_GETPARAFORMAT, align 4
  %28 = ptrtoint %struct.TYPE_2__* %2 to i32
  %29 = call i32 @SendMessageA(i32 %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @PFM_TABLEROWDELIMITER, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @PFM_TABLEROWDELIMITER, align 4
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @DestroyWindow(i32 %83)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
