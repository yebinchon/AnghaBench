; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winblitstatusbar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winblitstatusbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i64 }

@gapp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"Search: %s\00", align 1
@xdpy = common dso_local global i32 0, align 4
@xgc = common dso_local global i32 0, align 4
@xscr = common dso_local global i32 0, align 4
@showingmessage = common dso_local global i64 0, align 8
@message = common dso_local global i8* null, align 8
@showingpage = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Page %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @winblitstatusbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winblitstatusbar(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [58 x i8], align 16
  %4 = alloca [42 x i8], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 4), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds [58 x i8], [58 x i8]* %3, i64 0, i64 0
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 0), align 8
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @xdpy, align 4
  %12 = load i32, i32* @xgc, align 4
  %13 = load i32, i32* @xdpy, align 4
  %14 = load i32, i32* @xscr, align 4
  %15 = call i32 @WhitePixel(i32 %13, i32 %14)
  %16 = call i32 @XSetForeground(i32 %11, i32 %12, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 3), align 8
  %18 = call i32 @fillrect(i32 0, i32 0, i32 %17, i32 30)
  %19 = getelementptr inbounds [58 x i8], [58 x i8]* %3, i64 0, i64 0
  %20 = call i32 @windrawstring(%struct.TYPE_4__* @gapp, i32 10, i32 20, i8* %19)
  br label %47

21:                                               ; preds = %1
  %22 = load i64, i64* @showingmessage, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* @xdpy, align 4
  %26 = load i32, i32* @xgc, align 4
  %27 = load i32, i32* @xdpy, align 4
  %28 = load i32, i32* @xscr, align 4
  %29 = call i32 @WhitePixel(i32 %27, i32 %28)
  %30 = call i32 @XSetForeground(i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 3), align 8
  %32 = call i32 @fillrect(i32 0, i32 0, i32 %31, i32 30)
  %33 = load i8*, i8** @message, align 8
  %34 = call i32 @windrawstring(%struct.TYPE_4__* @gapp, i32 10, i32 20, i8* %33)
  br label %46

35:                                               ; preds = %21
  %36 = load i64, i64* @showingpage, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds [42 x i8], [42 x i8]* %4, i64 0, i64 0
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 1), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gapp, i32 0, i32 2), align 4
  %42 = call i32 @snprintf(i8* %39, i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = getelementptr inbounds [42 x i8], [42 x i8]* %4, i64 0, i64 0
  %44 = call i32 @windrawstringxor(%struct.TYPE_4__* @gapp, i32 10, i32 20, i8* %43)
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @XSetForeground(i32, i32, i32) #1

declare dso_local i32 @WhitePixel(i32, i32) #1

declare dso_local i32 @fillrect(i32, i32, i32, i32) #1

declare dso_local i32 @windrawstring(%struct.TYPE_4__*, i32, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @windrawstringxor(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
