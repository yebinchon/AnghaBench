; ModuleID = '/home/carl/AnghaBench/tmux/extr_log.c_log_vwrite.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_log.c_log_vwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@log_file = common dso_local global i32* null, align 8
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%lld.%06d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @log_vwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_vwrite(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** @log_file, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @vasprintf(i8** %5, i8* %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @VIS_OCTAL, align 4
  %21 = load i32, i32* @VIS_CSTYLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VIS_TAB, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VIS_NL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @stravis(i8** %6, i8* %19, i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %18
  %32 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %33 = load i32*, i32** @log_file, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38, i8* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %31
  %45 = load i32*, i32** @log_file, align 8
  %46 = call i32 @fflush(i32* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @stravis(i8**, i8*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
