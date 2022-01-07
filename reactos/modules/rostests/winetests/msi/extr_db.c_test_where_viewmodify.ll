; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_where_viewmodify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_where_viewmodify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"CREATE TABLE `Table` ( `A` INT, `B` INT PRIMARY KEY `A` )\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"INSERT INTO `Table` ( `A`, `B` ) VALUES ( 1, 2 )\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"INSERT INTO `Table` ( `A`, `B` ) VALUES ( 3, 4 )\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"INSERT INTO `Table` ( `A`, `B` ) VALUES ( 5, 6 )\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"SELECT * FROM `Table` WHERE `B` = 3\00", align 1
@MSIMODIFY_INSERT_TEMPORARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"SELECT * FROM `Table` WHERE `A` = 7\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Expected 7, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Expected 8, got %d\0A\00", align 1
@MSIMODIFY_UPDATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Expected 9, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"UPDATE `Table` SET `B` = 10 WHERE `A` = 7\00", align 1
@MSIMODIFY_REFRESH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Expected 10, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_where_viewmodify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_where_viewmodify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @msifile, align 4
  %7 = call i32 @DeleteFileA(i32 %6)
  %8 = load i32, i32* @msifileW, align 4
  %9 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %10 = call i32 @MsiOpenDatabaseW(i32 %8, i32 %9, i32* %1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ERROR_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @run_query(i32 %17, i32 0, i8* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ERROR_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %26 = load i32, i32* %1, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @run_query(i32 %26, i32 0, i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ERROR_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %35 = load i32, i32* %1, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @run_query(i32 %35, i32 0, i8* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %44 = load i32, i32* %1, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @run_query(i32 %44, i32 0, i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ERROR_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %53 = load i32, i32* %1, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @MsiDatabaseOpenViewA(i32 %53, i8* %54, i32* %2)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ERROR_SUCCESS, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = call i32 @MsiCreateRecord(i32 2)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @MsiRecordSetInteger(i32 %63, i32 1, i32 7)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @MsiRecordSetInteger(i32 %65, i32 2, i32 8)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @MSIMODIFY_INSERT_TEMPORARY, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @MsiViewModify(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ERROR_SUCCESS, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @MsiCloseHandle(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @MsiViewClose(i32 %79)
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @MsiCloseHandle(i32 %81)
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %83 = load i32, i32* %1, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @MsiDatabaseOpenViewA(i32 %83, i8* %84, i32* %2)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ERROR_SUCCESS, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @MsiViewExecute(i32 %92, i32 0)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @ERROR_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @MsiViewFetch(i32 %100, i32* %3)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @MsiRecordGetInteger(i32 %108, i32 1)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 7
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @MsiRecordGetInteger(i32 %115, i32 2)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 8
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @MsiRecordSetInteger(i32 %122, i32 2, i32 9)
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @MSIMODIFY_UPDATE, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @MsiViewModify(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @ERROR_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @MsiCloseHandle(i32 %134)
  %136 = load i32, i32* %2, align 4
  %137 = call i32 @MsiViewClose(i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @MsiCloseHandle(i32 %138)
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %140 = load i32, i32* %1, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @MsiDatabaseOpenViewA(i32 %140, i8* %141, i32* %2)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @ERROR_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %2, align 4
  %150 = call i32 @MsiViewExecute(i32 %149, i32 0)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @ERROR_SUCCESS, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @ok(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @MsiViewFetch(i32 %157, i32* %3)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @ERROR_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @MsiRecordGetInteger(i32 %165, i32 1)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %167, 7
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @MsiRecordGetInteger(i32 %172, i32 2)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, 9
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %179 = load i32, i32* %1, align 4
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @run_query(i32 %179, i32 0, i8* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @ERROR_SUCCESS, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @MSIMODIFY_REFRESH, align 4
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @MsiViewModify(i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @ERROR_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @MsiRecordGetInteger(i32 %198, i32 1)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp eq i32 %200, 7
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @ok(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @MsiRecordGetInteger(i32 %205, i32 2)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %207, 10
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @MsiCloseHandle(i32 %212)
  %214 = load i32, i32* %2, align 4
  %215 = call i32 @MsiViewClose(i32 %214)
  %216 = load i32, i32* %2, align 4
  %217 = call i32 @MsiCloseHandle(i32 %216)
  %218 = load i32, i32* %1, align 4
  %219 = call i32 @MsiCloseHandle(i32 %218)
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @run_query(i32, i32, i8*) #1

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i32 @MsiCreateRecord(i32) #1

declare dso_local i32 @MsiRecordSetInteger(i32, i32, i32) #1

declare dso_local i32 @MsiViewModify(i32, i32, i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @MsiViewExecute(i32, i32) #1

declare dso_local i32 @MsiViewFetch(i32, i32*) #1

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
