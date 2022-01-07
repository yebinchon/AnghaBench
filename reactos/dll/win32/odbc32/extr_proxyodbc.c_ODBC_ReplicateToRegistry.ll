; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateToRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateToRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQL_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error %d freeing the SQL environment.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error %d opening an SQL environment.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"The external ODBC settings have not been replicated to the Wine registry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ODBC_ReplicateToRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ODBC_ReplicateToRegistry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @ODBC32_SQLAllocEnv(i32* %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @SQL_SUCCESS, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @ODBC_ReplicateODBCInstToRegistry(i32 %7)
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ODBC_ReplicateODBCToRegistry(i32 %9, i32 %10)
  %12 = load i32, i32* @TRUE, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ODBC_ReplicateODBCToRegistry(i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @ODBC32_SQLFreeEnv(i32 %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* @SQL_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i64, i64* %1, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %6
  br label %29

24:                                               ; preds = %0
  %25 = load i64, i64* %1, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @WARN(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @ODBC32_SQLAllocEnv(i32*) #1

declare dso_local i32 @ODBC_ReplicateODBCInstToRegistry(i32) #1

declare dso_local i32 @ODBC_ReplicateODBCToRegistry(i32, i32) #1

declare dso_local i64 @ODBC32_SQLFreeEnv(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
