; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_save_load_filemoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_save_load_filemoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@wszFileName1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CreateStreamOnHGlobal\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IStream_SetSize\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CreateFileMoniker\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IMoniker_Save\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"IStream_Seek\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"IStream_Write\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"IMoniker_Load\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_save_load_filemoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_save_load_filemoniker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 -19088744, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @wszFileName1, align 4
  %12 = call i64 @lstrlenW(i32 %11)
  %13 = add nsw i64 %12, 1
  %14 = add i64 8, %13
  %15 = add i64 %14, 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %21, i32** %2)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ok_ole_success(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IStream_SetSize(i32* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ok_ole_success(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @wszFileName1, align 4
  %35 = call i32 @CreateFileMoniker(i32 %34, i32** %1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ok_ole_success(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @IMoniker_Save(i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ok_ole_success(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @IMoniker_Release(i32* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @STREAM_SEEK_SET, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @IStream_Seek(i32* %46, i64 %49, i32 %47, i32* null)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ok_ole_success(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @IStream_Write(i32* %53, i32* %8, i32 4, i32* null)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ok_ole_success(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @STREAM_SEEK_SET, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @IStream_Seek(i32* %57, i64 %60, i32 %58, i32* null)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ok_ole_success(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @IStream_Write(i32* %64, i32* %8, i32 4, i32* null)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ok_ole_success(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @STREAM_SEEK_SET, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @IStream_Seek(i32* %68, i64 %71, i32 %69, i32* null)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @ok_ole_success(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %83, %0
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 5
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @IStream_Write(i32* %79, i32* %8, i32 4, i32* null)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ok_ole_success(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %75

86:                                               ; preds = %75
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* @STREAM_SEEK_SET, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @IStream_Seek(i32* %87, i64 %90, i32 %88, i32* null)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @ok_ole_success(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @wszFileName1, align 4
  %95 = call i32 @CreateFileMoniker(i32 %94, i32** %1)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @ok_ole_success(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32*, i32** %1, align 8
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @IMoniker_Load(i32* %98, i32* %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @ok_ole_success(i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @IMoniker_Release(i32* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @IStream_Release(i32* %105)
  ret void
}

declare dso_local i64 @lstrlenW(i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @IStream_SetSize(i32*, i32) #1

declare dso_local i32 @CreateFileMoniker(i32, i32**) #1

declare dso_local i32 @IMoniker_Save(i32*, i32*, i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @IStream_Write(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IMoniker_Load(i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
