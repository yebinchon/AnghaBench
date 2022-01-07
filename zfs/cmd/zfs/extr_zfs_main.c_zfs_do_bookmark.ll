; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_bookmark.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"missing snapshot argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"missing bookmark argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"invalid snapshot name '%s': must contain a '@'\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"invalid bookmark name '%s': must contain a '#'\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot create bookmark '%s'\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"bookmark is in a different pool\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"bookmark exists\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"bookmark feature not enabled\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"dataset does not exist\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_bookmark(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %35, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %35 [
    i32 63, label %30
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @optopt, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* %32, i32 %33)
  br label %187

35:                                               ; preds = %28
  br label %23

36:                                               ; preds = %23
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @stderr, align 4
  %49 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* %49)
  br label %187

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @stderr, align 4
  %56 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* %56)
  br label %187

58:                                               ; preds = %51
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 64)
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @stderr, align 4
  %66 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* %66, i8* %69)
  br label %187

71:                                               ; preds = %58
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 35)
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79, i8* %82)
  br label %187

84:                                               ; preds = %71
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 64
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = trunc i64 %17 to i32
  %97 = call i32 @strlcpy(i8* %19, i8* %95, i32 %96)
  %98 = call i8* @strchr(i8* %19, i8 signext 35)
  store i8 0, i8* %98, align 1
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = trunc i64 %17 to i32
  %103 = call i32 @strlcat(i8* %19, i8* %101, i32 %102)
  br label %110

104:                                              ; preds = %84
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = trunc i64 %17 to i32
  %109 = call i32 @strlcpy(i8* %19, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %92
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 35
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = trunc i64 %21 to i32
  %123 = call i32 @strlcpy(i8* %22, i8* %121, i32 %122)
  %124 = call i8* @strchr(i8* %22, i8 signext 64)
  store i8 0, i8* %124, align 1
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = trunc i64 %21 to i32
  %129 = call i32 @strlcat(i8* %22, i8* %127, i32 %128)
  br label %136

130:                                              ; preds = %110
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = trunc i64 %21 to i32
  %135 = call i32 @strlcpy(i8* %22, i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %118
  %137 = load i32, i32* @g_zfs, align 4
  %138 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %139 = call i32* @zfs_open(i32 %137, i8* %19, i32 %138)
  store i32* %139, i32** %9, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %187

143:                                              ; preds = %136
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @zfs_close(i32* %144)
  %146 = call i32* (...) @fnvlist_alloc()
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @fnvlist_add_string(i32* %147, i8* %22, i8* %19)
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @lzc_bookmark(i32* %149, i32* null)
  store i32 %150, i32* %11, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @fnvlist_free(i32* %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %143
  store i8* null, i8** %13, align 8
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %157 = load i32, i32* @TEXT_DOMAIN, align 4
  %158 = call i8* @dgettext(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %159 = call i32 @snprintf(i8* %156, i32 1024, i8* %158, i8* %22)
  %160 = load i32, i32* %11, align 4
  switch i32 %160, label %167 [
    i32 128, label %161
    i32 133, label %162
    i32 132, label %163
    i32 129, label %164
    i32 130, label %165
    i32 131, label %166
  ]

161:                                              ; preds = %155
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %172

162:                                              ; preds = %155
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %172

163:                                              ; preds = %155
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %172

164:                                              ; preds = %155
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %172

165:                                              ; preds = %155
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %172

166:                                              ; preds = %155
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %172

167:                                              ; preds = %155
  %168 = load i32, i32* @g_zfs, align 4
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %171 = call i32 @zfs_standard_error(i32 %168, i32 %169, i8* %170)
  br label %172

172:                                              ; preds = %167, %166, %165, %164, %163, %162, %161
  %173 = load i8*, i8** %13, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* @stderr, align 4
  %177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %178 = load i32, i32* @TEXT_DOMAIN, align 4
  %179 = load i8*, i8** %13, align 8
  %180 = call i8* @dgettext(i32 %178, i8* %179)
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %177, i8* %180)
  br label %182

182:                                              ; preds = %175, %172
  br label %183

183:                                              ; preds = %182, %143
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %190

187:                                              ; preds = %142, %77, %64, %54, %47, %30
  %188 = load i32, i32* @B_FALSE, align 4
  %189 = call i32 @usage(i32 %188)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @lzc_bookmark(i32*, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local i32 @usage(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
