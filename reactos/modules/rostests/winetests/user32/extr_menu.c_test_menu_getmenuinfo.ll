; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_test_menu_getmenuinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_test_menu_getmenuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"GetMenuInfo() should have failed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"GetMenuInfo() error got %u expected %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"GetMenuInfo() should have succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GetMenuInfo() error got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_menu_getmenuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_menu_getmenuinfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = call i32* (...) @CreateMenu()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @pGetMenuInfo(i32* %10, %struct.TYPE_3__* null)
  store i32 %11, i32* %3, align 4
  %12 = call i32 (...) @GetLastError()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %0
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -559038737
  %24 = zext i1 %23 to i32
  %25 = call i64 @broken(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %0
  %28 = phi i1 [ true, %0 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @pGetMenuInfo(i32* %35, %struct.TYPE_3__* %2)
  store i32 %36, i32* %3, align 4
  %37 = call i32 (...) @GetLastError()
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, -559038737
  %49 = zext i1 %48 to i32
  %50 = call i64 @broken(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %46, %27
  %53 = phi i1 [ true, %27 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = call i32 @SetLastError(i32 -559038737)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 8, i32* %59, align 4
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @pGetMenuInfo(i32* %60, %struct.TYPE_3__* %2)
  store i32 %61, i32* %3, align 4
  %62 = call i32 (...) @GetLastError()
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, -559038737
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = call i32 @pGetMenuInfo(i32* null, %struct.TYPE_3__* %2)
  store i32 %72, i32* %3, align 4
  %73 = call i32 (...) @GetLastError()
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %52
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, -559038737
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %52
  %89 = phi i1 [ true, %52 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @DestroyMenu(i32* %94)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @CreateMenu(...) #2

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetMenuInfo(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @DestroyMenu(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
