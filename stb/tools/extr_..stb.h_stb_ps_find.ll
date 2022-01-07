; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_find.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8** }
%struct.TYPE_9__ = type { i32, i8** }
%struct.TYPE_7__ = type { i64, i8** }

@STB_ps_direct = common dso_local global i32 0, align 4
@STB_ps_bucket = common dso_local global i32 0, align 4
@STB_BUCKET_SIZE = common dso_local global i32 0, align 4
@STB_TRUE = common dso_local global i32 0, align 4
@STB_FALSE = common dso_local global i32 0, align 4
@STB_ps_array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_ps_find(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = trunc i64 %16 to i32
  %18 = and i32 3, %17
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i32
  %22 = and i32 3, %21
  %23 = load i32, i32* @STB_ps_direct, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @stb_ps_fastlist_valid(i8* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @STB_ps_direct, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %174

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @STB_ps_bucket, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call %struct.TYPE_8__* @GetBucket(i8* %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %8, align 8
  %45 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %42
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %64, %56, %42
  %81 = load i32, i32* @STB_TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %174

82:                                               ; preds = %72
  %83 = load i32, i32* @STB_FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %174

84:                                               ; preds = %38
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @STB_ps_array, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = call %struct.TYPE_9__* @GetArray(i8* %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %110, %88
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @STB_TRUE, align 4
  store i32 %108, i32* %3, align 4
  br label %174

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load i32, i32* @STB_FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %174

115:                                              ; preds = %84
  %116 = load i8*, i8** %4, align 8
  %117 = call %struct.TYPE_7__* @GetHash(i8* %116)
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %10, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @stb_hashptr(i8* %118)
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = and i64 %120, %123
  store i64 %124, i64* %13, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  store i8** %127, i8*** %14, align 8
  %128 = load i8**, i8*** %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %115
  %135 = load i32, i32* @STB_TRUE, align 4
  store i32 %135, i32* %3, align 4
  br label %174

136:                                              ; preds = %115
  %137 = load i8**, i8*** %14, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @STB_FALSE, align 4
  store i32 %143, i32* %3, align 4
  br label %174

144:                                              ; preds = %136
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @stb_rehash(i64 %145)
  %147 = or i32 %146, 1
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %12, align 8
  br label %149

149:                                              ; preds = %166, %144
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %150, %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = and i64 %152, %155
  store i64 %156, i64* %13, align 8
  %157 = load i8**, i8*** %14, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %149
  %164 = load i32, i32* @STB_TRUE, align 4
  store i32 %164, i32* %3, align 4
  br label %174

165:                                              ; preds = %149
  br label %166

166:                                              ; preds = %165
  %167 = load i8**, i8*** %14, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds i8*, i8** %167, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %149, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* @STB_FALSE, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %163, %142, %134, %113, %107, %82, %80, %33
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_ps_fastlist_valid(i8*) #1

declare dso_local %struct.TYPE_8__* @GetBucket(i8*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i8*) #1

declare dso_local %struct.TYPE_7__* @GetHash(i8*) #1

declare dso_local i64 @stb_hashptr(i8*) #1

declare dso_local i32 @stb_rehash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
