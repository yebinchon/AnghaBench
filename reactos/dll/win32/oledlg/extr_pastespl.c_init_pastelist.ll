; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_init_pastelist.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_init_pastelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@DATADIR_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to create IEnumFORMATETC\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"got %d formats hr %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"req_fmt %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09enum'ed fmt %x\0A\00", align 1
@IDC_PS_PASTELIST = common dso_local global i32 0, align 4
@IDC_PS_PASTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__*)* @init_pastelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_pastelist(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x %struct.TYPE_10__], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DATADIR_GET, align 4
  %17 = call i32 @IDataObject_EnumFormatEtc(i32 %15, i32 %16, i32** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %113

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds [20 x %struct.TYPE_10__], [20 x %struct.TYPE_10__]* %8, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %25)
  %27 = getelementptr inbounds [20 x %struct.TYPE_10__], [20 x %struct.TYPE_10__]* %8, i64 0, i64 0
  %28 = call i32 @IEnumFORMATETC_Next(i32* %24, i32 %26, %struct.TYPE_10__* %27, i64* %9)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @SUCCEEDED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %98, %35
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %36
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i64 %43, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %94, %42
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds [20 x %struct.TYPE_10__], [20 x %struct.TYPE_10__]* %8, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds [20 x %struct.TYPE_10__], [20 x %struct.TYPE_10__]* %8, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %76, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %63
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @IDC_PS_PASTELIST, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = call i32 @add_entry_to_lb(i32 %83, i32 %84, %struct.TYPE_11__* %89)
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %97

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %59

97:                                               ; preds = %82, %59
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %12, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %12, align 8
  br label %36

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101, %23
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @IEnumFORMATETC_Release(i32* %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @IDC_PS_PASTE, align 4
  %107 = call i32 @GetDlgItem(i32 %105, i32 %106)
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @EnableWindow(i32 %107, i32 %110)
  %112 = load i64, i64* %10, align 8
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %102, %21
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

declare dso_local i32 @IDataObject_EnumFormatEtc(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IEnumFORMATETC_Next(i32*, i32, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @add_entry_to_lb(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @IEnumFORMATETC_Release(i32*) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
