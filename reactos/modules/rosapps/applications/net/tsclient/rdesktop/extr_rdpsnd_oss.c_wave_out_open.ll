; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_oss.c_wave_out_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_oss.c_wave_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"AUDIODEV\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@This = common dso_local global %struct.TYPE_2__* null, align 8
@False = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wave_out_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i8* @xstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @O_WRONLY, align 4
  %11 = load i32, i32* @O_NONBLOCK, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %9, i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @This, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = icmp eq i32 %13, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @perror(i8* %18)
  %20 = load i32, i32* @False, align 4
  store i32 %20, i32* %1, align 4
  br label %35

21:                                               ; preds = %8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @This, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @F_SETFL, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @This, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @F_GETFL, align 4
  %30 = call i32 (i32, i32, ...) @fcntl(i32 %28, i32 %29)
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 %25, i32 %32)
  %34 = load i32, i32* @True, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %21, %17
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
