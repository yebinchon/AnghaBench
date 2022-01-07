; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_verify_repo_passwd.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_verify_repo_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported enc_version %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_verify_repo_passwd(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca [65 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = call %struct.TYPE_5__* @g_string_new(i32* null)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %6, align 4
  br label %64

28:                                               ; preds = %22, %19, %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @g_string_append_printf(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %43 = call i32 @seafile_derive_key(i32 %35, i32 %38, i32 %39, i8* %40, i8* %41, i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @g_string_free(%struct.TYPE_5__* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %28
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %51 = getelementptr inbounds [65 x i8], [65 x i8]* %15, i64 0, i64 0
  %52 = call i32 @rawdata_to_hex(i8* %50, i8* %51, i32 32)
  br label %57

53:                                               ; preds = %28
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %55 = getelementptr inbounds [65 x i8], [65 x i8]* %15, i64 0, i64 0
  %56 = call i32 @rawdata_to_hex(i8* %54, i8* %55, i32 16)
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds [65 x i8], [65 x i8]* %15, i64 0, i64 0
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @g_strcmp0(i8* %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %64

63:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62, %25
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_5__* @g_string_new(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_5__*, i8*, i8*, i8*) #1

declare dso_local i32 @seafile_derive_key(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rawdata_to_hex(i8*, i8*, i32) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
