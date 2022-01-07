; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_index.c_create_drop_index_thread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_index.c_create_drop_index_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [373 x i8] c"DROP INDEX IF EXISTS i1;DROP INDEX IF EXISTS i2;DROP INDEX IF EXISTS i3;DROP INDEX IF EXISTS i4;CREATE INDEX IF NOT EXISTS i1 ON t11(a);CREATE INDEX IF NOT EXISTS i2 ON t11(b);CREATE INDEX IF NOT EXISTS i3 ON t11(c);CREATE INDEX IF NOT EXISTS i4 ON t11(d);SELECT * FROM t11 ORDER BY a;SELECT * FROM t11 ORDER BY b;SELECT * FROM t11 ORDER BY c;SELECT * FROM t11 ORDER BY d;\00", align 1
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @create_drop_index_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_drop_index_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  br label %9

9:                                                ; preds = %13, %2
  %10 = call i32 @timetostop(%struct.TYPE_13__* %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call i32 @opendb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = call i32 @sql_script(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([373 x i8], [373 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @SQLITE_LOCKED, align 4
  %17 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %16)
  %18 = call i32 @closedb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6)
  br label %9

19:                                               ; preds = %9
  %20 = call i32 @print_and_free_err(%struct.TYPE_13__* %5)
  %21 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret i8* %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @timetostop(%struct.TYPE_13__*) #2

declare dso_local i32 @opendb(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #2

declare dso_local i32 @clear_error(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @closedb(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_13__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
