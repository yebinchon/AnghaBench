; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_diff.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"FHt\00", align 1
@ZFS_DIFF_CLASSIFY = common dso_local global i32 0, align 4
@ZFS_DIFF_PARSEABLE = common dso_local global i32 0, align 4
@ZFS_DIFF_TIMESTAMP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"must provide at least one snapshot name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_diff(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %13, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %34 [
    i32 70, label %22
    i32 72, label %26
    i32 116, label %30
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @ZFS_DIFF_CLASSIFY, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %41

26:                                               ; preds = %20
  %27 = load i32, i32* @ZFS_DIFF_PARSEABLE, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* @ZFS_DIFF_TIMESTAMP, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @optopt, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36, i32 %37)
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %34, %30, %26, %22
  br label %15

42:                                               ; preds = %15
  %43 = load i64, i64* @optind, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i64, i64* @optind, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55)
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i32 @usage(i32 %57)
  br label %59

59:                                               ; preds = %53, %42
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* %64)
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @usage(i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %9, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i8* [ %77, %74 ], [ null, %78 ]
  store i8* %80, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 64
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @strdup(i8* %86)
  store i8* %87, i8** %11, align 8
  br label %95

88:                                               ; preds = %79
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @strdup(i8* %92)
  store i8* %93, i8** %11, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i8*, i8** %11, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @B_FALSE, align 4
  %100 = call i32 @usage(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i8*, i8** %11, align 8
  %103 = call i8* @strchr(i8* %102, i8 signext 64)
  store i8* %103, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** %10, align 8
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @g_zfs, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %111 = call i32* @zfs_open(i32 %108, i8* %109, i32 %110)
  store i32* %111, i32** %6, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @free(i8* %114)
  store i32 1, i32* %3, align 4
  br label %146

116:                                              ; preds = %107
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @free(i8* %117)
  %119 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 2
  %120 = call i32 @sigemptyset(i32* %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @errno, align 4
  store i32 %123, i32* %12, align 4
  br label %140

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @SIG_IGN, align 4
  %127 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* @SIGPIPE, align 4
  %129 = call i32 @sigaction(i32 %128, %struct.sigaction* %14, i32* null)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @errno, align 4
  store i32 %132, i32* %12, align 4
  br label %140

133:                                              ; preds = %124
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @STDOUT_FILENO, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @zfs_show_diffs(i32* %134, i32 %135, i8* %136, i8* %137, i32 %138)
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %133, %131, %122
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @zfs_close(i32* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %113
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @zfs_show_diffs(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
