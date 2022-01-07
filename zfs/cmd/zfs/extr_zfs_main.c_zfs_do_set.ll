; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_set.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"missing arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"missing property=value argument(s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"missing dataset name(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid argument order\0A\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@set_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* %21, i32 %27)
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call i32 @usage(i32 %29)
  br label %31

31:                                               ; preds = %19, %11, %2
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36)
  %38 = load i32, i32* @B_FALSE, align 4
  %39 = call i32 @usage(i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32* @strchr(i8* %46, i8 signext 61)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* %51)
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @B_FALSE, align 4
  %59 = call i32 @usage(i32 %58)
  br label %60

60:                                               ; preds = %57, %40
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load i8**, i8*** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32* @strchr(i8* %70, i8 signext 61)
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* @stderr, align 4
  %78 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* %78)
  %80 = load i32, i32* @B_FALSE, align 4
  %81 = call i32 @usage(i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  br label %89

83:                                               ; preds = %65
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %61

93:                                               ; preds = %61
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* %98)
  %100 = load i32, i32* @B_FALSE, align 4
  %101 = call i32 @usage(i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %104 = call i64 @nvlist_alloc(i32** %5, i32 %103, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 (...) @nomem()
  br label %108

108:                                              ; preds = %106, %102
  store i32 1, i32* %8, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32*, i32** %5, align 8
  %115 = load i8**, i8*** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @parseprop(i32* %114, i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %113
  store i32 -1, i32* %7, align 4
  br label %139

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %109

127:                                              ; preds = %109
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i8**, i8*** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %136 = load i32, i32* @set_callback, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @zfs_for_each(i32 %130, i8** %134, i32 0, i32 %135, i32* null, i32* null, i32 0, i32 %136, i32* %137)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %127, %122
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @nvlist_free(i32* %140)
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @parseprop(i32*, i8*) #1

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
