; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_select_with_tablenames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_select_with_tablenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_select_with_tablenames.vals = private unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 1, i32 12], [2 x i32] [i32 4, i32 12], [2 x i32] [i32 1, i32 15], [2 x i32] [i32 4, i32 15]], align 16
@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"CREATE TABLE `T1` ( `A` SHORT, `B` SHORT PRIMARY KEY `A`)\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"INSERT INTO `T1` ( `A`, `B` ) VALUES ( 1, 2 )\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"INSERT INTO `T1` ( `A`, `B` ) VALUES ( 4, 5 )\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"CREATE TABLE `T2` ( `A` SHORT, `B` SHORT PRIMARY KEY `A`)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"INSERT INTO `T2` ( `A`, `B` ) VALUES ( 11, 12 )\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"INSERT INTO `T2` ( `A`, `B` ) VALUES ( 14, 15 )\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"SELECT T1.A, T2.B FROM T1,T2\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_select_with_tablenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_select_with_tablenames() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x [2 x i32]], align 16
  %8 = bitcast [4 x [2 x i32]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x [2 x i32]]* @__const.test_select_with_tablenames.vals to i8*), i64 32, i1 false)
  %9 = call i32 (...) @create_db()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %12 = load i32, i32* %1, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @run_query(i32 %12, i32 0, i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @run_query(i32 %21, i32 0, i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ERROR_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %30 = load i32, i32* %1, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @run_query(i32 %30, i32 0, i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %39 = load i32, i32* %1, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @run_query(i32 %39, i32 0, i8* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ERROR_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %48 = load i32, i32* %1, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @run_query(i32 %48, i32 0, i8* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ERROR_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %57 = load i32, i32* %1, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @run_query(i32 %57, i32 0, i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ERROR_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %66 = load i32, i32* %1, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @MsiDatabaseOpenViewA(i32 %66, i8* %67, i32* %2)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ERROR_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @MsiViewExecute(i32 %75, i32 0)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ERROR_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %131, %0
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %134

86:                                               ; preds = %83
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @MsiViewFetch(i32 %87, i32* %3)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @ERROR_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @MsiRecordGetInteger(i32 %95, i32 1)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %7, i64 0, i64 %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i64 0, i64 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %97, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %7, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @MsiRecordGetInteger(i32 %112, i32 2)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %7, i64 0, i64 %116
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %114, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %7, i64 0, i64 %123
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @MsiCloseHandle(i32 %129)
  br label %131

131:                                              ; preds = %86
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %83

134:                                              ; preds = %83
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @MsiViewFetch(i32 %135, i32* %3)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %2, align 4
  %144 = call i32 @MsiViewClose(i32 %143)
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @MsiCloseHandle(i32 %145)
  %147 = load i32, i32* %1, align 4
  %148 = call i32 @MsiCloseHandle(i32 %147)
  %149 = load i32, i32* @msifile, align 4
  %150 = call i32 @DeleteFileA(i32 %149)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @run_query(i32, i32, i8*) #2

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #2

declare dso_local i32 @MsiViewExecute(i32, i32) #2

declare dso_local i32 @MsiViewFetch(i32, i32*) #2

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @MsiViewClose(i32) #2

declare dso_local i32 @DeleteFileA(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
