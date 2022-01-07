; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"npsw\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"stop request ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"invalid option combination: -w cannot be used with -s\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"missing device\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Memory that will be used after removing %s: %s\0A\00", align 1
@ZPOOL_WAIT_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_remove(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* @B_FALSE, align 8
  store i64 %20, i64* %14, align 8
  br label %21

21:                                               ; preds = %43, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %43 [
    i32 110, label %28
    i32 112, label %30
    i32 115, label %32
    i32 119, label %34
    i32 63, label %36
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @B_TRUE, align 8
  store i64 %29, i64* %12, align 8
  br label %43

30:                                               ; preds = %26
  %31 = load i64, i64* @B_TRUE, align 8
  store i64 %31, i64* %13, align 8
  br label %43

32:                                               ; preds = %26
  %33 = load i64, i64* @B_TRUE, align 8
  store i64 %33, i64* %10, align 8
  br label %43

34:                                               ; preds = %26
  %35 = load i64, i64* @B_TRUE, align 8
  store i64 %35, i64* %14, align 8
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* @stderr, align 4
  %38 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @optopt, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* %38, i32 %39)
  %41 = load i64, i64* @B_FALSE, align 8
  %42 = call i32 @usage(i64 %41)
  br label %43

43:                                               ; preds = %36, %26, %34, %32, %30, %28
  br label %21

44:                                               ; preds = %21
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @stderr, align 4
  %57 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* %57)
  %59 = load i64, i64* @B_FALSE, align 8
  %60 = call i32 @usage(i64 %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i32, i32* @g_zfs, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32* @zpool_open(i32 %65, i8* %66)
  store i32* %67, i32** %9, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %187

70:                                               ; preds = %61
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @stderr, align 4
  %78 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* %78)
  store i32 0, i32* %3, align 4
  br label %187

80:                                               ; preds = %73, %70
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* %88)
  %90 = load i64, i64* @B_FALSE, align 8
  %91 = call i32 @usage(i64 %90)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @zpool_vdev_remove_cancel(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i64, i64* %14, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @stderr, align 4
  %102 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* %102)
  %104 = load i64, i64* @B_FALSE, align 8
  %105 = call i32 @usage(i64 %104)
  br label %106

106:                                              ; preds = %100, %97
  br label %183

107:                                              ; preds = %80
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @stderr, align 4
  %112 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* %112)
  %114 = load i64, i64* @B_FALSE, align 8
  %115 = call i32 @usage(i64 %114)
  br label %116

116:                                              ; preds = %110, %107
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %169, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %117
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %157

124:                                              ; preds = %121
  %125 = load i32*, i32** %9, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @zpool_vdev_indirect_size(i32* %125, i8* %130, i64* %15)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 1, i32* %8, align 4
  br label %172

134:                                              ; preds = %124
  %135 = load i64, i64* %13, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %142, i64 %143)
  br label %156

145:                                              ; preds = %134
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %148 = call i32 @zfs_nicenum(i64 %146, i8* %147, i32 32)
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %155 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %153, i8* %154)
  br label %156

156:                                              ; preds = %145, %137
  br label %168

157:                                              ; preds = %121
  %158 = load i32*, i32** %9, align 8
  %159 = load i8**, i8*** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @zpool_vdev_remove(i32* %158, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %167

167:                                              ; preds = %166, %157
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %117

172:                                              ; preds = %133, %117
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i64, i64* %14, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* @ZPOOL_WAIT_REMOVE, align 4
  %181 = call i32 @zpool_wait(i32* %179, i32 %180)
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %178, %175, %172
  br label %183

183:                                              ; preds = %182, %106
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @zpool_close(i32* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %183, %76, %69
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_vdev_remove_cancel(i32*) #1

declare dso_local i64 @zpool_vdev_indirect_size(i32*, i8*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #1

declare dso_local i64 @zpool_vdev_remove(i32*, i8*) #1

declare dso_local i32 @zpool_wait(i32*, i32) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
