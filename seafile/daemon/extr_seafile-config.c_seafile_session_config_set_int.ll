; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-config.c_seafile_session_config_set_int.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-config.c_seafile_session_config_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"REPLACE INTO Config VALUES ('%q', %d);\00", align 1
@KEY_PROXY_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_session_config_set_int(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @sqlite3_snprintf(i32 256, i8* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %17 = call i64 @sqlite_query_exec(i32 %15, i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @KEY_PROXY_PORT, align 4
  %23 = call i64 @g_strcmp0(i8* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
