; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_fileGetsize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_fileGetsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i64*)* }
%struct.stat = type { i64 }

@g = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error in xFileSize() - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @fileGetsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fileGetsize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  store i64 0, i64* %1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 2), align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_5__*, i64*)*, i32 (%struct.TYPE_5__*, i64*)** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 2), align 8
  %13 = call i32 %11(%struct.TYPE_5__* %12, i64* %1)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SQLITE_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %6
  br label %28

23:                                               ; preds = %0
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 1), align 8
  %25 = call i32 @fstat(i32 %24, %struct.stat* %3)
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %1, align 8
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i64, i64* %1, align 8
  ret i64 %29
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
