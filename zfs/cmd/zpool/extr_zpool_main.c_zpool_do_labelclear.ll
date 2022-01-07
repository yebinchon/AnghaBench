; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_labelclear.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_labelclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing vdev name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"failed to find device %s, try specifying absolute path instead\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to open %s: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to invalidate cache for %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to read label from %s\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to check state for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s is a member (%s) of pool \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"use '-f' to override the following error:\0A%s is a member of exported pool \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"use '-f' to override the following error:\0A%s is a member of potentially active pool \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to clear label for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_labelclear(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @B_FALSE, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %16, align 4
  br label %25

25:                                               ; preds = %41, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %34 [
    i32 102, label %32
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @B_TRUE, align 4
  store i32 %33, i32* %16, align 4
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @optopt, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36, i32 %37)
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %34, %32
  br label %25

42:                                               ; preds = %25
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
  %55 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55)
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i32 @usage(i32 %57)
  br label %59

59:                                               ; preds = %53, %42
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 1
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
  %72 = trunc i64 %20 to i32
  %73 = call i32 @strlcpy(i8* %22, i8* %71, i32 %72)
  %74 = getelementptr inbounds i8, i8* %22, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 47
  br i1 %77, label %78, label %113

78:                                               ; preds = %68
  %79 = call i64 @stat(i8* %22, %struct.stat* %9)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @MAXPATHLEN, align 4
  %86 = call i32 @zfs_resolve_shortname(i8* %84, i8* %22, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = call i64 @zfs_dev_is_whole_disk(i8* %22)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* @MAXPATHLEN, align 4
  %94 = call i32 @zfs_append_partition(i8* %22, i32 %93)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @ENOENT, align 4
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %89, %81
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = call i64 @stat(i8* %22, %struct.stat* %9)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @stderr, align 4
  %107 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* %107, i8* %110)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %208

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %78, %68
  %114 = load i32, i32* @O_RDWR, align 4
  %115 = call i32 @open(i8* %22, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @stderr, align 4
  %119 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i64, i64* @errno, align 8
  %121 = call i8* @strerror(i64 %120)
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* %119, i8* %22, i8* %121)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %208

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @zfs_dev_flush(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load i64, i64* @errno, align 8
  %129 = load i64, i64* @ENOTTY, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* @stderr, align 4
  %133 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i64, i64* @errno, align 8
  %135 = call i8* @strerror(i64 %134)
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* %133, i8* %22, i8* %135)
  br label %137

137:                                              ; preds = %131, %127, %123
  %138 = load i32, i32* %11, align 4
  %139 = call i64 @zpool_read_label(i32 %138, i32** %13, i32* null)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* @stderr, align 4
  %143 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* %143, i8* %22)
  store i32 1, i32* %12, align 4
  br label %202

145:                                              ; preds = %137
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @nvlist_free(i32* %146)
  %148 = load i32, i32* @g_zfs, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @zpool_in_use(i32 %148, i32 %149, i32* %14, i8** %8, i32* %15)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* @stderr, align 4
  %155 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* %155, i8* %22)
  store i32 1, i32* %12, align 4
  br label %202

157:                                              ; preds = %145
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %192

161:                                              ; preds = %157
  %162 = load i32, i32* %14, align 4
  switch i32 %162, label %163 [
    i32 133, label %164
    i32 128, label %164
    i32 130, label %164
    i32 131, label %171
    i32 129, label %180
    i32 132, label %189
  ]

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %161, %161, %161, %163
  %165 = load i32, i32* @stderr, align 4
  %166 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %167 = load i32, i32* %14, align 4
  %168 = call i8* @zpool_pool_state_to_name(i32 %167)
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* %166, i8* %22, i8* %168, i8* %169)
  store i32 1, i32* %12, align 4
  br label %202

171:                                              ; preds = %161
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %191

175:                                              ; preds = %171
  %176 = load i32, i32* @stderr, align 4
  %177 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0))
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* %177, i8* %22, i8* %178)
  store i32 1, i32* %12, align 4
  br label %202

180:                                              ; preds = %161
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %191

184:                                              ; preds = %180
  %185 = load i32, i32* @stderr, align 4
  %186 = call i8* @gettext(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0))
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* %186, i8* %22, i8* %187)
  store i32 1, i32* %12, align 4
  br label %202

189:                                              ; preds = %161
  %190 = call i32 @assert(i32 0)
  br label %191

191:                                              ; preds = %189, %183, %174
  br label %192

192:                                              ; preds = %191, %160
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @zpool_clear_label(i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @stderr, align 4
  %199 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* %199, i8* %22)
  br label %201

201:                                              ; preds = %197, %192
  br label %202

202:                                              ; preds = %201, %184, %175, %164, %153, %141
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 @free(i8* %203)
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @close(i32 %205)
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %208

208:                                              ; preds = %202, %117, %105
  %209 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @zfs_resolve_shortname(i8*, i8*, i32) #2

declare dso_local i64 @zfs_dev_is_whole_disk(i8*) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i64 @zfs_dev_flush(i32) #2

declare dso_local i64 @zpool_read_label(i32, i32**, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zpool_in_use(i32, i32, i32*, i8**, i32*) #2

declare dso_local i8* @zpool_pool_state_to_name(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zpool_clear_label(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
