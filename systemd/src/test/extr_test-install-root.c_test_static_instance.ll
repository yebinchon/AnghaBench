; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-install-root.c_test_static_instance.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-install-root.c_test_static_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_FILE_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"static-instance@.service\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"static-instance@foo.service\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"/usr/lib/systemd/system/static-instance@.service\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"[Install]\0AWantedBy=multi-user.target\0A\00", align 1
@WRITE_STRING_FILE_CREATE = common dso_local global i32 0, align 4
@UNIT_FILE_DISABLED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"/usr/lib/systemd/system/static-instance@foo.service\00", align 1
@UNIT_FILE_STATIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_static_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_static_instance(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @unit_file_get_state(i32 %5, i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %3)
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @unit_file_get_state(i32 %13, i8* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64* %3)
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strjoina(i8* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @WRITE_STRING_FILE_CREATE, align 4
  %25 = call i64 @write_string_file(i8* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @unit_file_get_state(i32 %29, i8* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %3)
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @UNIT_FILE_DISABLED, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %1
  %38 = phi i1 [ false, %1 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @unit_file_get_state(i32 %41, i8* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64* %3)
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @UNIT_FILE_DISABLED, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i1 [ false, %37 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = load i8*, i8** %2, align 8
  %54 = call i8* @strjoina(i8* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @symlink(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = icmp sge i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @unit_file_get_state(i32 %60, i8* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %3)
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @UNIT_FILE_DISABLED, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %64, %49
  %69 = phi i1 [ false, %49 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @unit_file_get_state(i32 %72, i8* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64* %3)
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @UNIT_FILE_STATIC, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %68
  %81 = phi i1 [ false, %68 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @unit_file_get_state(i32, i8*, i8*, i64*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i64 @write_string_file(i8*, i8*, i32) #1

declare dso_local i64 @symlink(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
