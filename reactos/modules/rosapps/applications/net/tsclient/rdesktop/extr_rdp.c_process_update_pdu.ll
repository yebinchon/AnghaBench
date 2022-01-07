; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_update_pdu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_update_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"update %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @process_update_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_update_pdu(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @in_uint16_le(i32 %7, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ui_begin_update(i32* %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %34 [
    i32 130, label %13
    i32 131, label %25
    i32 129, label %29
    i32 128, label %33
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @in_uint8s(i32 %14, i32 2)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @in_uint16_le(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @in_uint8s(i32 %19, i32 2)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @process_orders(i32* %21, i32 %22, i32 %23)
  br label %37

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @process_bitmap_updates(i32* %26, i32 %27)
  br label %37

29:                                               ; preds = %2
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @process_palette(i32* %30, i32 %31)
  br label %37

33:                                               ; preds = %2
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @unimpl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %33, %29, %25, %13
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ui_end_update(i32* %38)
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @ui_begin_update(i32*) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @process_orders(i32*, i32, i32) #1

declare dso_local i32 @process_bitmap_updates(i32*, i32) #1

declare dso_local i32 @process_palette(i32*, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @ui_end_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
