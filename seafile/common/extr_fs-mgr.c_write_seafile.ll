; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_write_seafile.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_write_seafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to compress seafile obj %s:%s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i32*, i8*)* @write_seafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_seafile(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [41 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %23 = call i8* @create_seafile_json(i32 %20, i32* %21, i32* %14, i8* %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i64 @seaf_compress(i8* %24, i32 %25, i8** %15, i32* %16)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %31 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  store i32 -1, i32* %11, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @free(i8* %32)
  br label %72

34:                                               ; preds = %19
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i64 @seaf_obj_store_write_obj(i32 %37, i8* %38, i32 %39, i8* %40, i8* %41, i32 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 -1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @g_free(i8* %48)
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @free(i8* %50)
  br label %71

52:                                               ; preds = %5
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %55 = call i8* @create_seafile_v0(i32* %53, i32* %14, i8* %54)
  store i8* %55, i8** %13, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i64 @seaf_obj_store_write_obj(i32 %58, i8* %59, i32 %60, i8* %61, i8* %62, i32 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 -1, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @g_free(i8* %69)
  br label %71

71:                                               ; preds = %68, %47
  br label %72

72:                                               ; preds = %71, %28
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @hex_to_rawdata(i8* %76, i8* %77, i32 20)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i8* @create_seafile_json(i32, i32*, i32*, i8*) #1

declare dso_local i64 @seaf_compress(i8*, i32, i8**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @seaf_obj_store_write_obj(i32, i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @create_seafile_v0(i32*, i32*, i8*) #1

declare dso_local i32 @hex_to_rawdata(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
