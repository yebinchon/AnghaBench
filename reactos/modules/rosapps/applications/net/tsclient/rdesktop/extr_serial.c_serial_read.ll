; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_read.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.termios* }
%struct.termios = type { i64* }

@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TIOCINQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*)* @serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_read(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca %struct.termios*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i64 90, i64* %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_3__* @get_serial_info(i32* %16, i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %14, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load %struct.termios*, %struct.termios** %20, align 8
  store %struct.termios* %21, %struct.termios** %15, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = add nsw i32 %39, 99
  %41 = sdiv i32 %40, 100
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %13, align 8
  br label %58

43:                                               ; preds = %6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %53, 99
  %55 = sdiv i32 %54, 100
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %48, %43
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.termios*, %struct.termios** %15, align 8
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @VTIME, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load %struct.termios*, %struct.termios** %15, align 8
  %68 = getelementptr inbounds %struct.termios, %struct.termios* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @VMIN, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 0, i64* %71, align 8
  br label %84

72:                                               ; preds = %58
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.termios*, %struct.termios** %15, align 8
  %75 = getelementptr inbounds %struct.termios, %struct.termios* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @VTIME, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %73, i64* %78, align 8
  %79 = load %struct.termios*, %struct.termios** %15, align 8
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @VMIN, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 1, i64* %83, align 8
  br label %84

84:                                               ; preds = %72, %61
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @TCSANOW, align 4
  %87 = load %struct.termios*, %struct.termios** %15, align 8
  %88 = call i32 @tcsetattr(i32 %85, i32 %86, %struct.termios* %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @read(i32 %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %12, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_3__* @get_serial_info(i32*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
