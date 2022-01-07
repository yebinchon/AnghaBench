; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers_1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"CREATE TRIGGER itr%d BEFORE INSERT ON t%d BEGIN INSERT INTO t%d VALUES(new.x, new.y);END;\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"CREATE TRIGGER dtr%d BEFORE DELETE ON t%d BEGIN DELETE FROM t%d WHERE x = old.x; END;\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DROP TRIGGER itr%d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DROP TRIGGER dtr%d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%d created, %d dropped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @dynamic_triggers_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dynamic_triggers_1(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = call i32 @opendb(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %17

17:                                               ; preds = %91, %2
  %18 = call i32 @timetostop(%struct.TYPE_12__* %5)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %92

21:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @sqlite3_free(i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %22

40:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 9
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46, i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* %50)
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @sqlite3_free(i8* %52)
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %41

59:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 9
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* %66)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @sqlite3_free(i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %60

75:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 9
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* %82)
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @sqlite3_free(i8* %84)
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %76

91:                                               ; preds = %76
  br label %17

92:                                               ; preds = %17
  %93 = call i32 @closedb(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6)
  %94 = call i32 @print_and_free_err(%struct.TYPE_12__* %5)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 %96)
  ret i8* %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_12__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, ...) #2

declare dso_local i32 @execsql(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
