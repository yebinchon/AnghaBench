; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_futime.c__futime32.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_futime.c__futime32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._utimbuf = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_futime(i32 %0, %struct._utimbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._utimbuf*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct._utimbuf* %1, %struct._utimbuf** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_4__* @get_ioinfo(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = call i32 @release_ioinfo(%struct.TYPE_4__* %18)
  store i32 -1, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct._utimbuf*, %struct._utimbuf** %5, align 8
  %22 = icmp ne %struct._utimbuf* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = call i32 @_time(i64* %9)
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = bitcast i64* %7 to i32*
  %28 = call i32 @RtlSecondsSince1970ToTime(i32 %26, i32* %27)
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %8, align 8
  br label %54

30:                                               ; preds = %20
  %31 = load %struct._utimbuf*, %struct._utimbuf** %5, align 8
  %32 = getelementptr inbounds %struct._utimbuf, %struct._utimbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = bitcast i64* %7 to i32*
  %36 = call i32 @RtlSecondsSince1970ToTime(i32 %34, i32* %35)
  %37 = load %struct._utimbuf*, %struct._utimbuf** %5, align 8
  %38 = getelementptr inbounds %struct._utimbuf, %struct._utimbuf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct._utimbuf*, %struct._utimbuf** %5, align 8
  %41 = getelementptr inbounds %struct._utimbuf, %struct._utimbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %8, align 8
  br label %53

46:                                               ; preds = %30
  %47 = load %struct._utimbuf*, %struct._utimbuf** %5, align 8
  %48 = getelementptr inbounds %struct._utimbuf, %struct._utimbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = bitcast i64* %8 to i32*
  %52 = call i32 @RtlSecondsSince1970ToTime(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %46, %44
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @SetFileTime(i64 %57, i32* null, i64* %7, i64* %8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = call i32 @release_ioinfo(%struct.TYPE_4__* %61)
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 @_dosmaperr(i32 %63)
  store i32 -1, i32* %3, align 4
  br label %68

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = call i32 @release_ioinfo(%struct.TYPE_4__* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %60, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_4__* @get_ioinfo(i32) #1

declare dso_local i32 @release_ioinfo(%struct.TYPE_4__*) #1

declare dso_local i32 @_time(i64*) #1

declare dso_local i32 @RtlSecondsSince1970ToTime(i32, i32*) #1

declare dso_local i32 @SetFileTime(i64, i32*, i64*, i64*) #1

declare dso_local i32 @_dosmaperr(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
