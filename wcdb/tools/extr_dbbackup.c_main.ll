; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_main.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tabdesc_path = common dso_local global i64 0, align 8
@g_key = common dso_local global i64 0, align 8
@g_db_path = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@g_dbkey = common dso_local global i64 0, align 8
@g_operation = common dso_local global i64 0, align 8
@DBBAK_OP_BACKUP = common dso_local global i64 0, align 8
@g_dump_path = common dso_local global i32 0, align 4
@g_flags = common dso_local global i32 0, align 4
@print_log = common dso_local global i32 0, align 4
@g_tabdesc = common dso_local global i32 0, align 4
@g_num_tabdesc = common dso_local global i32 0, align 4
@DBBAK_OP_RECOVER = common dso_local global i64 0, align 8
@g_tabdesc_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @parse_options(i32 %11, i8** %12)
  %14 = load i64, i64* @g_tabdesc_path, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* @g_tabdesc_path, align 8
  %18 = call i32 @parse_tabdesc(i64 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i64, i64* @g_key, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @g_key, align 8
  %24 = call i32 @strlen(i64 %23)
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @g_db_path, align 4
  %29 = call i32 @sqlite3_open(i32 %28, i32** %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -3, i32* %3, align 4
  br label %107

34:                                               ; preds = %26
  %35 = load i64, i64* @g_dbkey, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* @g_dbkey, align 8
  %40 = load i64, i64* @g_dbkey, align 8
  %41 = call i32 @strlen(i64 %40)
  %42 = call i32 @sqlite3_key(i32* %38, i64 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i64, i64* @g_operation, align 8
  %45 = load i64, i64* @DBBAK_OP_BACKUP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load i64, i64* @g_key, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @g_dump_path, align 4
  %52 = load i32, i32* @g_flags, align 4
  %53 = load i32, i32* @print_log, align 4
  %54 = call i32* @mm_backup_init(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  store i32 -2, i32* %3, align 4
  br label %107

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @g_tabdesc, align 4
  %62 = load i32, i32* @g_num_tabdesc, align 4
  %63 = call i32 @mm_backup_run(i32* %59, i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -4, i32* %3, align 4
  br label %107

67:                                               ; preds = %58
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @mm_backup_finish(i32* %68)
  br label %100

70:                                               ; preds = %43
  %71 = load i64, i64* @g_operation, align 8
  %72 = load i64, i64* @DBBAK_OP_RECOVER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32, i32* @g_dump_path, align 4
  %76 = load i64, i64* @g_key, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @print_log, align 4
  %80 = call i32* @mm_recover_init(i32 %75, i32* %77, i32 %78, i32 %79)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 -2, i32* %3, align 4
  br label %107

84:                                               ; preds = %74
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @mm_recover_run(i32* %85, i32* %86, i32 1)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 -4, i32* %3, align 4
  br label %107

91:                                               ; preds = %84
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @mm_recover_finish(i32* %92)
  br label %99

94:                                               ; preds = %70
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @usage(i8* %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %99, %67
  %101 = load i32, i32* @g_tabdesc_buffer, align 4
  %102 = call i32 @free(i32 %101)
  %103 = load i32, i32* @g_tabdesc, align 4
  %104 = call i32 @free(i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @sqlite3_close(i32* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %90, %83, %66, %57, %33
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32 @parse_tabdesc(i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @sqlite3_open(i32, i32**) #1

declare dso_local i32 @sqlite3_key(i32*, i64, i32) #1

declare dso_local i32* @mm_backup_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mm_backup_run(i32*, i32*, i32, i32) #1

declare dso_local i32 @mm_backup_finish(i32*) #1

declare dso_local i32* @mm_recover_init(i32, i32*, i32, i32) #1

declare dso_local i32 @mm_recover_run(i32*, i32*, i32) #1

declare dso_local i32 @mm_recover_finish(i32*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
