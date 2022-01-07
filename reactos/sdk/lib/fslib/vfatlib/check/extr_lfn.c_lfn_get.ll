; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_lfn_get.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_lfn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@VFAT_LN_ATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"lfn_get called with LFN directory entry\00", align 1
@lfn_slot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Unfinished long file name \22%s\22.\0A  (Start may have been overwritten by %s)\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [109 x i8] c"1: Delete LFN\0A2: Leave it as it is.\0A3: Fix numbering (truncates long name and attaches it to short name %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Not auto-correcting this.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lfn_parts = common dso_local global i32 0, align 4
@LFN_ID_START = common dso_local global i32 0, align 4
@lfn_offsets = common dso_local global i64* null, align 8
@LFN_ENT = common dso_local global i32 0, align 4
@lfn_unicode = common dso_local global i32 0, align 4
@CHARS_PER_LFN = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@lfn_checksum = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [107 x i8] c"Wrong checksum for long file name \22%s\22.\0A  (Short name %s may have changed without updating the long name)\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"1: Delete LFN\0A2: Leave it as it is.\0A3: Fix checksum (attaches to short name %s)\0A\00", align 1
@alias_checksum = common dso_local global i32 0, align 4
@UNTIL_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lfn_get(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFAT_LN_ATTR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* @lfn_slot, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %196

26:                                               ; preds = %22
  %27 = load i32, i32* @lfn_slot, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %26
  %30 = call i8* (...) @CNV_PARTS_SO_FAR()
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i8* @file_name(i32* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i64, i64* @interactive, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %47

45:                                               ; preds = %29
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i64, i64* @interactive, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @get_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 50, %52 ]
  switch i32 %54, label %105 [
    i32 49, label %55
    i32 50, label %60
    i32 51, label %62
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @lfn_parts, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @clear_lfn_slots(i32 0, i32 %57)
  %59 = call i32 (...) @lfn_reset()
  store i8* null, i8** %3, align 8
  br label %196

60:                                               ; preds = %53
  %61 = call i32 (...) @lfn_reset()
  store i8* null, i8** %3, align 8
  br label %196

62:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %89, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @lfn_parts, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32, i32* @lfn_parts, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @LFN_ID_START, align 4
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %70, %77
  store i32 %78, i32* %11, align 4
  %79 = load i64*, i64** @lfn_offsets, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @LFN_ENT, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @offsetof(i32 %84, i32 %85)
  %87 = add nsw i64 %83, %86
  %88 = call i32 @fs_write(i64 %87, i32 4, i32* %11)
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %63

92:                                               ; preds = %63
  %93 = load i32, i32* @lfn_unicode, align 4
  %94 = load i32, i32* @lfn_unicode, align 4
  %95 = load i32, i32* @lfn_slot, align 4
  %96 = load i32, i32* @CHARS_PER_LFN, align 4
  %97 = mul nsw i32 %95, %96
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %94, %98
  %100 = load i32, i32* @lfn_parts, align 4
  %101 = load i32, i32* @CHARS_PER_LFN, align 4
  %102 = mul nsw i32 %100, %101
  %103 = mul nsw i32 %102, 2
  %104 = call i32 @memmove(i32 %93, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %53, %92
  br label %106

106:                                              ; preds = %105, %26
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %127, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MSDOS_NAME, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 1
  %114 = shl i32 %113, 7
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 254
  %117 = ashr i32 %116, 1
  %118 = or i32 %114, %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %118, %125
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %111
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %107

130:                                              ; preds = %107
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @lfn_checksum, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %186

134:                                              ; preds = %130
  %135 = call i8* (...) @CNV_PARTS_SO_FAR()
  store i8* %135, i8** %12, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i8* @file_name(i32* %138)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i8* %140, i8* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i64, i64* @interactive, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0), i8* %148)
  br label %152

150:                                              ; preds = %134
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i64, i64* @interactive, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %152
  %156 = call i32 @get_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  switch i32 %156, label %184 [
    i32 49, label %157
    i32 50, label %162
    i32 51, label %164
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* @lfn_parts, align 4
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @clear_lfn_slots(i32 0, i32 %159)
  %161 = call i32 (...) @lfn_reset()
  store i8* null, i8** %3, align 8
  br label %196

162:                                              ; preds = %155
  %163 = call i32 (...) @lfn_reset()
  store i8* null, i8** %3, align 8
  br label %196

164:                                              ; preds = %155
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %180, %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @lfn_parts, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %165
  %170 = load i64*, i64** @lfn_offsets, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @LFN_ENT, align 4
  %176 = load i32, i32* @alias_checksum, align 4
  %177 = call i64 @offsetof(i32 %175, i32 %176)
  %178 = add nsw i64 %174, %177
  %179 = call i32 @fs_write(i64 %178, i32 4, i32* %7)
  br label %180

180:                                              ; preds = %169
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %165

183:                                              ; preds = %165
  br label %184

184:                                              ; preds = %155, %183
  br label %185

185:                                              ; preds = %184, %152
  br label %186

186:                                              ; preds = %185, %130
  %187 = load i64*, i64** @lfn_offsets, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %5, align 8
  store i64 %189, i64* %190, align 8
  %191 = load i32, i32* @lfn_unicode, align 4
  %192 = load i32, i32* @UNTIL_0, align 4
  %193 = call i8* @cnv_unicode(i32 %191, i32 %192, i32 1)
  store i8* %193, i8** %6, align 8
  %194 = call i32 (...) @lfn_reset()
  %195 = load i8*, i8** %6, align 8
  store i8* %195, i8** %3, align 8
  br label %196

196:                                              ; preds = %186, %162, %157, %60, %55, %25
  %197 = load i8*, i8** %3, align 8
  ret i8* %197
}

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @CNV_PARTS_SO_FAR(...) #1

declare dso_local i8* @file_name(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @get_key(i8*, i8*) #1

declare dso_local i32 @clear_lfn_slots(i32, i32) #1

declare dso_local i32 @lfn_reset(...) #1

declare dso_local i32 @fs_write(i64, i32, i32*) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i8* @cnv_unicode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
