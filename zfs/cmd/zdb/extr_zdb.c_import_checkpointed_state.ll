; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_import_checkpointed_state.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_import_checkpointed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [76 x i8] c"Tried to read config of pool \22%s\22 but spa_get_stats() failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@BOGUS_SUFFIX = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZFS_IMPORT_MISSING_LOG = common dso_local global i32 0, align 4
@ZFS_IMPORT_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_IMPORT_SKIP_MMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Tried to import pool \22%s\22 but spa_import() failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i8**)* @import_checkpointed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @import_checkpointed_state(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i8* @strndup(i8* %23, i64 %24)
  store i8* %25, i8** %9, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @zdb_set_skip_mmp(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @spa_get_stats(i8* %34, i32** %6, i32* null, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @fatal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** @BOGUS_SUFFIX, align 8
  %46 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %4, align 8
  br label %97

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @fnvlist_add_string(i32* %50, i32 %51, i8* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ZFS_IMPORT_MISSING_LOG, align 4
  %57 = load i32, i32* @ZFS_IMPORT_CHECKPOINT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ZFS_IMPORT_SKIP_MMP, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @spa_import(i8* %54, i32* %55, i32* null, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @fatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %49
  %69 = load i8**, i8*** %7, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @asprintf(i8** %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %83, %80
  store i8* null, i8** %4, align 8
  br label %97

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %71, %68
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %86, %48
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @zdb_set_skip_mmp(i8*) #1

declare dso_local i32 @spa_get_stats(i8*, i32**, i32*, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
