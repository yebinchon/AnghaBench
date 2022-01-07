; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_onselreq.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_onselreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64, i32, i32, i32, i32 }

@advance_scheduled = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@SelectionNotify = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@xdpy = common dso_local global i32 0, align 4
@XA_TARGETS = common dso_local global i64 0, align 8
@XA_TIMESTAMP = common dso_local global i64 0, align 8
@XA_STRING = common dso_local global i64 0, align 8
@XA_UTF8_STRING = common dso_local global i64 0, align 8
@PropModeReplace = common dso_local global i32 0, align 4
@copylatin1 = common dso_local global i64 0, align 8
@copyutf8 = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i32)* @onselreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onselreq(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca [4 x i64], align 16
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* @advance_scheduled, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @None, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32, i32* @SelectionNotify, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @True, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @xdpy, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @XA_TARGETS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %18
  %47 = load i64, i64* @XA_TARGETS, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %47, i64* %48, align 16
  %49 = load i64, i64* @XA_TIMESTAMP, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* @XA_STRING, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %51, i64* %52, align 16
  %53 = load i64, i64* @XA_UTF8_STRING, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* @xdpy, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @PropModeReplace, align 4
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %61 = bitcast i64* %60 to i8*
  %62 = call i32 @XChangeProperty(i32 %55, i32 %56, i64 %57, i64 %58, i32 32, i32 %59, i8* %61, i32 4)
  br label %99

63:                                               ; preds = %18
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @XA_STRING, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* @xdpy, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @PropModeReplace, align 4
  %73 = load i64, i64* @copylatin1, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i64, i64* @copylatin1, align 8
  %76 = call i32 @strlen(i64 %75)
  %77 = call i32 @XChangeProperty(i32 %68, i32 %69, i64 %70, i64 %71, i32 8, i32 %72, i8* %74, i32 %76)
  br label %98

78:                                               ; preds = %63
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @XA_UTF8_STRING, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32, i32* @xdpy, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* @PropModeReplace, align 4
  %88 = load i64, i64* @copyutf8, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i64, i64* @copyutf8, align 8
  %91 = call i32 @strlen(i64 %90)
  %92 = call i32 @XChangeProperty(i32 %83, i32 %84, i64 %85, i64 %86, i32 8, i32 %87, i8* %89, i32 %91)
  br label %97

93:                                               ; preds = %78
  %94 = load i64, i64* @None, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %82
  br label %98

98:                                               ; preds = %97, %67
  br label %99

99:                                               ; preds = %98, %46
  %100 = load i32, i32* @xdpy, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @False, align 4
  %103 = call i32 @XSendEvent(i32 %100, i32 %101, i32 %102, i32 0, %struct.TYPE_5__* %11)
  ret void
}

declare dso_local i32 @XChangeProperty(i32, i32, i64, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @XSendEvent(i32, i32, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
