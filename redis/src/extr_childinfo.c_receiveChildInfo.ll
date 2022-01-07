; ModuleID = '/home/carl/AnghaBench/redis/src/extr_childinfo.c_receiveChildInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_childinfo.c_receiveChildInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CHILD_INFO_MAGIC = common dso_local global i64 0, align 8
@CHILD_INFO_TYPE_RDB = common dso_local global i64 0, align 8
@CHILD_INFO_TYPE_AOF = common dso_local global i64 0, align 8
@CHILD_INFO_TYPE_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiveChildInfo() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %40

7:                                                ; preds = %0
  store i64 24, i64* %1, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @read(i32 %10, %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), i64 %11)
  %13 = load i64, i64* %1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %7
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 0), align 8
  %17 = load i64, i64* @CHILD_INFO_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 1), align 8
  %21 = load i64, i64* @CHILD_INFO_TYPE_RDB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 2), align 8
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 4), align 8
  br label %39

25:                                               ; preds = %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 1), align 8
  %27 = load i64, i64* @CHILD_INFO_TYPE_AOF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 2), align 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 3), align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 1), align 8
  %33 = load i64, i64* @CHILD_INFO_TYPE_MODULE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1, i32 2), align 8
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 2), align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %6, %39, %15, %7
  ret void
}

declare dso_local i64 @read(i32, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
