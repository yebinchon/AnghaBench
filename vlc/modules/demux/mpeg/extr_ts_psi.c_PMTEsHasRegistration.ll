; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTEsHasRegistration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTEsHasRegistration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid Registration Descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @PMTEsHasRegistration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PMTEsHasRegistration(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_3__* @PMTEsFindDescriptor(i32* %9, i32 5)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @msg_Warn(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp eq i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @memcmp(i32 %30, i8* %31, i32 4)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %19, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_3__* @PMTEsFindDescriptor(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
