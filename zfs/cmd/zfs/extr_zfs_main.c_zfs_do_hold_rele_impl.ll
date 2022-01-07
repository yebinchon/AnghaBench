; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_hold_rele_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_hold_rele_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"tag may not start with '.'\0A\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"'%s' is not a snapshot\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i64)* @zfs_do_hold_rele_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_hold_rele_impl(i32 %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %41, %3
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @getopt(i32 %25, i8** %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %41 [
    i32 114, label %32
    i32 63, label %34
  ]

32:                                               ; preds = %30
  %33 = load i64, i64* @B_TRUE, align 8
  store i64 %33, i64* %10, align 8
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @optopt, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36, i32 %37)
  %39 = load i64, i64* @B_FALSE, align 8
  %40 = call i32 @usage(i64 %39)
  br label %41

41:                                               ; preds = %34, %30, %32
  br label %24

42:                                               ; preds = %24
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
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i64, i64* @B_FALSE, align 8
  %55 = call i32 @usage(i64 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %4, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* %74)
  %76 = load i64, i64* @B_FALSE, align 8
  %77 = call i32 @usage(i64 %76)
  br label %78

78:                                               ; preds = %72, %66, %56
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %163, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %166

83:                                               ; preds = %79
  %84 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %14, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %15, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %17, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 64)
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %83
  %98 = load i32, i32* @stderr, align 4
  %99 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* %99, i8* %100)
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  store i32 7, i32* %18, align 4
  br label %159

104:                                              ; preds = %83
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @strncpy(i8* %87, i8* %105, i32 %111)
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = getelementptr inbounds i8, i8* %87, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* @g_zfs, align 4
  %120 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %121 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %122 = or i32 %120, %121
  %123 = call i32* @zfs_open(i32 %119, i8* %87, i32 %122)
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %104
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  store i32 7, i32* %18, align 4
  br label %159

129:                                              ; preds = %104
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i32*, i32** %13, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8*, i8** %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i64 @zfs_hold(i32* %133, i8* %135, i8* %136, i64 %137, i32 -1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %140, %132
  br label %156

144:                                              ; preds = %129
  %145 = load i32*, i32** %13, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load i8*, i8** %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i64 @zfs_release(i32* %145, i8* %147, i8* %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %152, %144
  br label %156

156:                                              ; preds = %155, %143
  %157 = load i32*, i32** %13, align 8
  %158 = call i32 @zfs_close(i32* %157)
  store i32 0, i32* %18, align 4
  br label %159

159:                                              ; preds = %156, %126, %97
  %160 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %18, align 4
  switch i32 %161, label %170 [
    i32 0, label %162
    i32 7, label %163
  ]

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %159
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %79

166:                                              ; preds = %79
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  ret i32 %169

170:                                              ; preds = %159
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_hold(i32*, i8*, i8*, i64, i32) #1

declare dso_local i64 @zfs_release(i32*, i8*, i8*, i64) #1

declare dso_local i32 @zfs_close(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
