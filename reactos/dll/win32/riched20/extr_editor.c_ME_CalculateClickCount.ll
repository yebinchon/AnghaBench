; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_CalculateClickCount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_CalculateClickCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i16, i16 }

@ME_CalculateClickCount.clickNum = internal global i32 0, align 4
@WM_MOUSEFIRST = common dso_local global i64 0, align 8
@WM_MOUSELAST = common dso_local global i64 0, align 8
@WM_LBUTTONDBLCLK = common dso_local global i64 0, align 8
@WM_RBUTTONDBLCLK = common dso_local global i64 0, align 8
@WM_MBUTTONDBLCLK = common dso_local global i64 0, align 8
@WM_XBUTTONDBLCLK = common dso_local global i64 0, align 8
@WM_LBUTTONDOWN = common dso_local global i64 0, align 8
@WM_RBUTTONDOWN = common dso_local global i64 0, align 8
@WM_MBUTTONDOWN = common dso_local global i64 0, align 8
@WM_XBUTTONDOWN = common dso_local global i64 0, align 8
@ME_CalculateClickCount.prevClickMsg = internal global %struct.TYPE_4__ zeroinitializer, align 8
@SM_CXDOUBLECLK = common dso_local global i32 0, align 4
@SM_CYDOUBLECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32)* @ME_CalculateClickCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_CalculateClickCount(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @WM_MOUSEFIRST, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @WM_MOUSELAST, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %140

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @WM_LBUTTONDBLCLK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @WM_RBUTTONDBLCLK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @WM_MBUTTONDBLCLK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @WM_XBUTTONDBLCLK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27, %23, %19
  %36 = load i64, i64* @WM_LBUTTONDBLCLK, align 8
  %37 = load i64, i64* @WM_LBUTTONDOWN, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @WM_LBUTTONDOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @WM_RBUTTONDOWN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @WM_MBUTTONDOWN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @WM_XBUTTONDOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %137

57:                                               ; preds = %53, %49, %45, %41
  %58 = load i32*, i32** %6, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32 %65, i32* %66, align 4
  %67 = call i64 (...) @GetMessageTime()
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @LOWORD(i32 %69)
  %71 = trunc i64 %70 to i16
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i16 %71, i16* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @HIWORD(i32 %74)
  %76 = trunc i64 %75 to i16
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i16 %76, i16* %78, align 2
  %79 = load i32, i32* @ME_CalculateClickCount.clickNum, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 1), align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %134

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 0), align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 2), align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 3), align 8
  %100 = sub nsw i64 %98, %99
  %101 = call i64 (...) @GetDoubleClickTime()
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = sext i16 %106 to i32
  %108 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 4, i32 0), align 8
  %109 = sext i16 %108 to i32
  %110 = sub nsw i32 %107, %109
  %111 = trunc i32 %110 to i16
  %112 = call i32 @abs(i16 signext %111)
  %113 = load i32, i32* @SM_CXDOUBLECLK, align 4
  %114 = call i32 @GetSystemMetrics(i32 %113)
  %115 = sdiv i32 %114, 2
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg, i32 0, i32 4, i32 1), align 2
  %123 = sext i16 %122 to i32
  %124 = sub nsw i32 %121, %123
  %125 = trunc i32 %124 to i16
  %126 = call i32 @abs(i16 signext %125)
  %127 = load i32, i32* @SM_CYDOUBLECLK, align 4
  %128 = call i32 @GetSystemMetrics(i32 %127)
  %129 = sdiv i32 %128, 2
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load i32, i32* @ME_CalculateClickCount.clickNum, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @ME_CalculateClickCount.clickNum, align 4
  br label %135

134:                                              ; preds = %117, %103, %96, %91, %86, %81, %57
  store i32 1, i32* @ME_CalculateClickCount.clickNum, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @ME_CalculateClickCount.prevClickMsg to i8*), i8* align 8 %136, i64 40, i1 false)
  br label %138

137:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @ME_CalculateClickCount.clickNum, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %137, %18
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i64 @GetMessageTime(...) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @GetDoubleClickTime(...) #1

declare dso_local i32 @abs(i16 signext) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
