; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_freethreadedmarshaldata.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_freethreadedmarshaldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSHCTX_INPROC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"size should have been %d instead of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"expected 0x%x, but got 0x%x for mshctx\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"expected %p, but got %p for mshctx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"got guid data: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"size should have been > sizeof(DWORD), not %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"marshal data should be filled by standard marshal and start with MEOW signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i64)* @test_freethreadedmarshaldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_freethreadedmarshaldata(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GetHGlobalFromStream(i32* %14, i32* %9)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @ok_ole_success(i32 %16, i32 (i32*, i32*)* @GetHGlobalFromStream)
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @GlobalSize(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @GlobalLock(i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MSHCTX_INPROC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %4
  %26 = call i64 @round_global_size(i32 28)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 16
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ true, %25 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = bitcast i8* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = bitcast i8* %62 to i8**
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %61, i8* %64)
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8* %67, i8** %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp uge i64 %68, 28
  br i1 %69, label %70, label %75

70:                                               ; preds = %36
  %71 = load i8*, i8** %11, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = call i32 @wine_dbgstr_guid(i32* %72)
  %74 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %36
  br label %88

76:                                               ; preds = %4
  %77 = load i64, i64* %10, align 8
  %78 = icmp ugt i64 %77, 8
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %10, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 1464812877
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %76, %75
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @GlobalUnlock(i32 %89)
  ret void
}

declare dso_local i32 @GetHGlobalFromStream(i32*, i32*) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i32*, i32*)*) #1

declare dso_local i64 @GlobalSize(i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i64 @round_global_size(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
