; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_write_state_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_write_state_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@binlog_enabled = common dso_local global i64 0, align 8
@write_state_file.wseq = internal global i32 0, align 4
@write_state_file.wpts = internal global i32 0, align 4
@write_state_file.wqts = internal global i32 0, align 4
@write_state_file.wdate = internal global i32 0, align 4
@TLS = common dso_local global %struct.TYPE_2__* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can not write state file '%s': %m\0A\00", align 1
@STATE_FILE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_state_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = load i64, i64* @binlog_enabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %75

6:                                                ; preds = %0
  %7 = load i32, i32* @write_state_file.wseq, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i32, i32* @write_state_file.wpts, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i32, i32* @write_state_file.wqts, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @write_state_file.wdate, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %75

31:                                               ; preds = %24, %18, %12, %6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @write_state_file.wseq, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @write_state_file.wpts, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @write_state_file.wqts, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @write_state_file.wdate, align 4
  %44 = call i32 (...) @get_state_filename()
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i32 %44, i32 %47, i32 384)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = call i32 (...) @get_state_filename()
  %53 = call i32 @logprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = call i32 @do_halt(i32 1)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i32, i32* @STATE_FILE_MAGIC, align 4
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  store i32 %56, i32* %57, align 16
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @write_state_file.wpts, align 4
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @write_state_file.wqts, align 4
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @write_state_file.wseq, align 4
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* @write_state_file.wdate, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %1, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %69 = call i32 @write(i32 %67, i32* %68, i32 24)
  %70 = icmp eq i32 %69, 24
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %55, %30, %5
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_state_filename(...) #1

declare dso_local i32 @logprintf(i8*, i32) #1

declare dso_local i32 @do_halt(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
