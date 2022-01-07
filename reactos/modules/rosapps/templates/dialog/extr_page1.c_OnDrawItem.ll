; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_page1.c_OnDrawItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_page1.c_OnDrawItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@BUFFER_LEN = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@hbmpPicture = common dso_local global i32 0, align 4
@hbmpOld = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@XBITMAP = common dso_local global i64 0, align 8
@ODS_SELECTED = common dso_local global i32 0, align 4
@YBITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @OnDrawItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnDrawItem(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @BUFFER_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %152

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %151 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %150
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LB_GETITEMDATA, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SendMessage(i32 %29, i32 %30, i32 %33, i64 0)
  store i32 %34, i32* @hbmpPicture, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CreateCompatibleDC(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @hbmpPicture, align 4
  %41 = call i32 @SelectObject(i32 %39, i32 %40)
  store i32 %41, i32* @hbmpOld, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %56, %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %65, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SRCCOPY, align 4
  %73 = call i32 @BitBlt(i32 %44, i64 %48, i32 %52, i64 %61, i32 %70, i32 %71, i32 0, i32 0, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LB_GETTEXT, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = ptrtoint i32* %15 to i64
  %82 = call i32 @SendMessage(i32 %76, i32 %77, i32 %80, i64 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GetTextMetrics(i32 %85, %struct.TYPE_8__* %7)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %90, %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %8, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @XBITMAP, align 8
  %104 = add nsw i64 %103, 6
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @_tcslen(i32* %15)
  %108 = call i32 @TextOut(i32 %102, i32 %105, i32 %106, i32* %15, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @hbmpOld, align 4
  %111 = call i32 @SelectObject(i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @DeleteDC(i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ODS_SELECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %26
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i64 %124, i64* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @XBITMAP, align 8
  %136 = add nsw i64 %134, %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @YBITMAP, align 4
  %143 = add nsw i32 %141, %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @DrawFocusRect(i32 %147, %struct.TYPE_9__* %11)
  br label %149

149:                                              ; preds = %120, %26
  br label %151

150:                                              ; preds = %22
  br label %151

151:                                              ; preds = %22, %150, %149
  br label %152

152:                                              ; preds = %151, %2
  %153 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendMessage(i32, i32, i32, i64) #2

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @BitBlt(i32, i64, i32, i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GetTextMetrics(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @TextOut(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @_tcslen(i32*) #2

declare dso_local i32 @DeleteDC(i32) #2

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
