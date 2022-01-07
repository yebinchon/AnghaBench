; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_main.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64 }
%struct.TYPE_5__ = type { i32 }

@print_log = common dso_local global i32 0, align 4
@g_save_master = common dso_local global i64 0, align 8
@g_in_path = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@g_cipher_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_out_key = common dso_local global i64 0, align 8
@SQLITERK_OK = common dso_local global i32 0, align 4
@g_load_master = common dso_local global i64 0, align 8
@g_filter = common dso_local global i32 0, align 4
@g_num_filter = common dso_local global i32 0, align 4
@g_out_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %14 = load i32, i32* @print_log, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqliterk_register(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @parse_options(i32 %18, i8** %19)
  %21 = load i64, i64* @g_save_master, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load i32, i32* @g_in_path, align 4
  %25 = call i32 @sqlite3_open(i32 %24, i32** %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -3, i32* %3, align 4
  br label %121

30:                                               ; preds = %23
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cipher_conf, i32 0, i32 2), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cipher_conf, i32 0, i32 2), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cipher_conf, i32 0, i32 0), align 8
  %37 = call i32 @sqlite3_key(i32* %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i64, i64* @g_out_key, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @g_out_key, align 8
  %43 = call i32 @strlen(i64 %42)
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* @g_save_master, align 8
  %49 = call i32 @sqliterk_save_master(i32* %47, i64 %48, i32* null, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @sqlite3_close(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SQLITERK_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 -4
  store i32 %56, i32* %3, align 4
  br label %121

57:                                               ; preds = %2
  store i32* null, i32** %11, align 8
  %58 = load i64, i64* @g_load_master, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* @g_load_master, align 8
  %62 = load i32, i32* @g_filter, align 4
  %63 = load i32, i32* @g_num_filter, align 4
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %65 = call i32 @sqliterk_load_master(i64 %61, i32* null, i32 0, i32 %62, i32 %63, i32** %11, i8* %64)
  store i32 %65, i32* %6, align 4
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cipher_conf, i32 0, i32 1), align 8
  br label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @g_filter, align 4
  %69 = load i32, i32* @g_num_filter, align 4
  %70 = call i32 @sqliterk_make_master(i32 %68, i32 %69, i32** %11)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @SQLITERK_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -6, i32* %3, align 4
  br label %121

76:                                               ; preds = %71
  %77 = load i32, i32* @g_in_path, align 4
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cipher_conf, i32 0, i32 2), align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, %struct.TYPE_6__* @g_cipher_conf, %struct.TYPE_6__* null
  %82 = call i32 @sqliterk_open(i32 %77, %struct.TYPE_6__* %81, i32** %8)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @SQLITERK_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 -3, i32* %3, align 4
  br label %121

87:                                               ; preds = %76
  %88 = load i32, i32* @g_out_path, align 4
  %89 = call i32 @sqlite3_open(i32 %88, i32** %7)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -3, i32* %3, align 4
  br label %121

94:                                               ; preds = %87
  %95 = load i64, i64* @g_out_key, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* @g_out_key, align 8
  %100 = load i64, i64* @g_out_key, align 8
  %101 = call i32 @strlen(i64 %100)
  %102 = call i32 @sqlite3_key(i32* %98, i64 %99, i32 %101)
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @sqliterk_output(i32* %104, i32* %105, i32* %106, i32 0)
  store i32 %107, i32* %6, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @sqliterk_free_master(i32* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @sqlite3_close(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @sqliterk_close(i32* %112)
  %114 = load i32, i32* @g_filter, align 4
  %115 = call i32 @free(i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SQLITERK_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 -4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %103, %93, %86, %75, %45, %29
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @sqliterk_register(i32) #1

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32 @sqlite3_open(i32, i32**) #1

declare dso_local i32 @sqlite3_key(i32*, i64, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @sqliterk_save_master(i32*, i64, i32*, i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @sqliterk_load_master(i64, i32*, i32, i32, i32, i32**, i8*) #1

declare dso_local i32 @sqliterk_make_master(i32, i32, i32**) #1

declare dso_local i32 @sqliterk_open(i32, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @sqliterk_output(i32*, i32*, i32*, i32) #1

declare dso_local i32 @sqliterk_free_master(i32*) #1

declare dso_local i32 @sqliterk_close(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
