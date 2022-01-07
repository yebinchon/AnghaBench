; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_GetMsgInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_GetMsgInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPY_MAX_MSGNUM = common dso_local global i64 0, align 8
@MessageTypeNames = common dso_local global i8** null, align 8
@LVM_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_LVMMSGNUM = common dso_local global i64 0, align 8
@LVMMessageTypeNames = common dso_local global i8** null, align 8
@TV_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_TVMSGNUM = common dso_local global i64 0, align 8
@TVMessageTypeNames = common dso_local global i8** null, align 8
@HDM_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_HDMMSGNUM = common dso_local global i64 0, align 8
@HDMMessageTypeNames = common dso_local global i8** null, align 8
@TCM_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_TCMMSGNUM = common dso_local global i64 0, align 8
@TCMMessageTypeNames = common dso_local global i8** null, align 8
@PGM_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_PGMMSGNUM = common dso_local global i64 0, align 8
@PGMMessageTypeNames = common dso_local global i8** null, align 8
@CCM_FIRST = common dso_local global i64 0, align 8
@SPY_MAX_CCMMSGNUM = common dso_local global i64 0, align 8
@CCMMessageTypeNames = common dso_local global i8** null, align 8
@WM_WINE_DESTROYWINDOW = common dso_local global i64 0, align 8
@SPY_MAX_WINEMSGNUM = common dso_local global i64 0, align 8
@WINEMessageTypeNames = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @SPY_GetMsgInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SPY_GetMsgInternal(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @SPY_MAX_MSGNUM, align 8
  %6 = icmp ule i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8**, i8*** @MessageTypeNames, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %132

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @LVM_FIRST, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @LVM_FIRST, align 8
  %19 = load i64, i64* @SPY_MAX_LVMMSGNUM, align 8
  %20 = add i64 %18, %19
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8**, i8*** @LVMMessageTypeNames, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @LVM_FIRST, align 8
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %132

29:                                               ; preds = %16, %12
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @TV_FIRST, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @TV_FIRST, align 8
  %36 = load i64, i64* @SPY_MAX_TVMSGNUM, align 8
  %37 = add i64 %35, %36
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8**, i8*** @TVMessageTypeNames, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @TV_FIRST, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %132

46:                                               ; preds = %33, %29
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @HDM_FIRST, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @HDM_FIRST, align 8
  %53 = load i64, i64* @SPY_MAX_HDMMSGNUM, align 8
  %54 = add i64 %52, %53
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8**, i8*** @HDMMessageTypeNames, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @HDM_FIRST, align 8
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %2, align 8
  br label %132

63:                                               ; preds = %50, %46
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @TCM_FIRST, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @TCM_FIRST, align 8
  %70 = load i64, i64* @SPY_MAX_TCMMSGNUM, align 8
  %71 = add i64 %69, %70
  %72 = icmp ule i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i8**, i8*** @TCMMessageTypeNames, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @TCM_FIRST, align 8
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %2, align 8
  br label %132

80:                                               ; preds = %67, %63
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @PGM_FIRST, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @PGM_FIRST, align 8
  %87 = load i64, i64* @SPY_MAX_PGMMSGNUM, align 8
  %88 = add i64 %86, %87
  %89 = icmp ule i64 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i8**, i8*** @PGMMessageTypeNames, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @PGM_FIRST, align 8
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %2, align 8
  br label %132

97:                                               ; preds = %84, %80
  %98 = load i64, i64* %3, align 8
  %99 = load i64, i64* @CCM_FIRST, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @CCM_FIRST, align 8
  %104 = load i64, i64* @SPY_MAX_CCMMSGNUM, align 8
  %105 = add i64 %103, %104
  %106 = icmp ule i64 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i8**, i8*** @CCMMessageTypeNames, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @CCM_FIRST, align 8
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %2, align 8
  br label %132

114:                                              ; preds = %101, %97
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* @WM_WINE_DESTROYWINDOW, align 8
  %117 = icmp uge i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* @WM_WINE_DESTROYWINDOW, align 8
  %121 = load i64, i64* @SPY_MAX_WINEMSGNUM, align 8
  %122 = add i64 %120, %121
  %123 = icmp ule i64 %119, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i8**, i8*** @WINEMessageTypeNames, align 8
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* @WM_WINE_DESTROYWINDOW, align 8
  %128 = sub i64 %126, %127
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %2, align 8
  br label %132

131:                                              ; preds = %118, %114
  store i8* null, i8** %2, align 8
  br label %132

132:                                              ; preds = %131, %124, %107, %90, %73, %56, %39, %22, %7
  %133 = load i8*, i8** %2, align 8
  ret i8* %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
