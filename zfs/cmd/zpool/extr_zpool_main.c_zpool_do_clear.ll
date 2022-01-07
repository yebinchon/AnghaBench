; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_clear.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_NO_REWIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"FnX\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"-n or -X only meaningful with -F\0A\00", align 1
@ZPOOL_TRY_REWIND = common dso_local global i32 0, align 4
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@ZPOOL_EXTREME_REWIND = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_LOAD_REWIND_POLICY = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_clear(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* @B_FALSE, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* @ZPOOL_NO_REWIND, align 4
  store i32 %19, i32* %11, align 4
  store i32* null, i32** %12, align 8
  br label %20

20:                                               ; preds = %40, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %40 [
    i32 70, label %27
    i32 110, label %29
    i32 88, label %31
    i32 63, label %33
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* @B_TRUE, align 8
  store i64 %28, i64* %9, align 8
  br label %40

29:                                               ; preds = %25
  %30 = load i64, i64* @B_TRUE, align 8
  store i64 %30, i64* %8, align 8
  br label %40

31:                                               ; preds = %25
  %32 = load i64, i64* @B_TRUE, align 8
  store i64 %32, i64* %10, align 8
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @optopt, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35, i32 %36)
  %38 = load i64, i64* @B_FALSE, align 8
  %39 = call i32 @usage(i64 %38)
  br label %40

40:                                               ; preds = %33, %25, %31, %29, %27
  br label %20

41:                                               ; preds = %20
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* %54)
  %56 = load i64, i64* @B_FALSE, align 8
  %57 = call i32 @usage(i64 %56)
  br label %58

58:                                               ; preds = %52, %41
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @stderr, align 4
  %63 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* %63)
  %65 = load i64, i64* @B_FALSE, align 8
  %66 = call i32 @usage(i64 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70, %67
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @stderr, align 4
  %78 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* %78)
  %80 = load i64, i64* @B_FALSE, align 8
  %81 = call i32 @usage(i64 %80)
  br label %82

82:                                               ; preds = %76, %73, %70
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  store i32 %86, i32* %11, align 4
  br label %93

87:                                               ; preds = %82
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @ZPOOL_EXTREME_REWIND, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %102 = call i64 @nvlist_alloc(i32** %12, i32 %101, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* @ZPOOL_LOAD_REWIND_POLICY, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @nvlist_add_uint32(i32* %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %100
  store i32 1, i32* %3, align 4
  br label %144

111:                                              ; preds = %104
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %14, align 8
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  br label %122

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i8* [ %120, %117 ], [ null, %121 ]
  store i8* %123, i8** %15, align 8
  %124 = load i32, i32* @g_zfs, align 4
  %125 = load i8*, i8** %14, align 8
  %126 = call i32* @zpool_open_canfail(i32 %124, i8* %125)
  store i32* %126, i32** %13, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @nvlist_free(i32* %129)
  store i32 1, i32* %3, align 4
  br label %144

131:                                              ; preds = %122
  %132 = load i32*, i32** %13, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i64 @zpool_clear(i32* %132, i8* %133, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %131
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @zpool_close(i32* %139)
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @nvlist_free(i32* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %128, %110
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint32(i32*, i32, i32) #1

declare dso_local i32* @zpool_open_canfail(i32, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zpool_clear(i32*, i8*, i32*) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
