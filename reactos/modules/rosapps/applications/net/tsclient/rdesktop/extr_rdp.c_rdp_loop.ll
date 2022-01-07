; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_loop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RDP_PDU_DEACTIVATE\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PDU %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdp_loop(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @False, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @True, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %58, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call %struct.TYPE_12__* @rdp_recv(%struct.TYPE_13__* %18, i32* %8)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @False, align 4
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %50 [
    i32 129, label %26
    i32 130, label %36
    i32 128, label %40
    i32 131, label %44
    i32 0, label %49
  ]

26:                                               ; preds = %24
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = call i32 @process_demand_active(%struct.TYPE_13__* %27, %struct.TYPE_12__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @False, align 4
  store i32 %32, i32* %4, align 4
  br label %69

33:                                               ; preds = %26
  %34 = load i32, i32* @False, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %53

36:                                               ; preds = %24
  %37 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @True, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %53

40:                                               ; preds = %24
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = call i32 @process_redirect_pdu(%struct.TYPE_13__* %41, %struct.TYPE_12__* %42)
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %24
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @process_data_pdu(%struct.TYPE_13__* %45, %struct.TYPE_12__* %46, i32* %47)
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %24
  br label %53

50:                                               ; preds = %24
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @unimpl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %49, %44, %36, %33
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @False, align 4
  store i32 %57, i32* %4, align 4
  br label %69

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %14

67:                                               ; preds = %14
  %68 = load i32, i32* @True, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %56, %40, %31, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_12__* @rdp_recv(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @process_demand_active(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @process_redirect_pdu(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @process_data_pdu(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
