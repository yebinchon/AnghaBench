; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_process_picture.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_process_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Empty id3 data!\00", align 1
@mpg123_id3_enc_max = common dso_local global i8 0, align 1
@NOQUIET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Unknown text encoding %u, I take no chances, sorry!\00", align 1
@VERBOSE4 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Note: Storing picture from APIC frame.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to attach new picture!\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Unable to get mime type for picture; skipping picture.\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Unable to get description for picture; skipping picture.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"No picture data defined; skipping picture.\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Unable to allocate memory for picture; skipping picture\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Note: ID3v2 APIC picture frame of type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @process_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_picture(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %7, align 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %175

17:                                               ; preds = %3
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @mpg123_id3_enc_max, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i64, i64* @NOQUIET, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8, i8* %7, align 1
  %28 = call i32 @error1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %175

30:                                               ; preds = %17
  %31 = load i64, i64* @VERBOSE4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_3__* @add_picture(i32* %37)
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = icmp eq %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* @NOQUIET, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  br label %175

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i8* @next_text(i8* %52, i8 zeroext 0, i64 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @pop_picture(i32* %58)
  %60 = load i64, i64* @NOQUIET, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  br label %175

65:                                               ; preds = %47
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* @NOQUIET, align 8
  %76 = call i32 @id3_to_utf8(i32* %67, i8 zeroext 0, i8* %68, i32 %74, i64 %75)
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = load i64, i64* %6, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %6, align 8
  %84 = load i8*, i8** %9, align 8
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8 %87, i8* %89, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %6, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %7, align 1
  %96 = load i64, i64* %6, align 8
  %97 = call i8* @next_text(i8* %94, i8 zeroext %95, i64 %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %65
  %101 = load i64, i64* @NOQUIET, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @pop_picture(i32* %106)
  br label %175

108:                                              ; preds = %65
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i8, i8* %7, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load i64, i64* @NOQUIET, align 8
  %120 = call i32 @id3_to_utf8(i32* %110, i8 zeroext %111, i8* %112, i32 %118, i64 %119)
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = load i64, i64* %6, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %108
  %131 = load i64, i64* @NOQUIET, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @pop_picture(i32* %136)
  br label %175

138:                                              ; preds = %108
  %139 = load i64, i64* %6, align 8
  %140 = call i64 @malloc(i64 %139)
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %138
  %149 = load i64, i64* @NOQUIET, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @pop_picture(i32* %154)
  br label %175

156:                                              ; preds = %138
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @memcpy(i8* %159, i8* %160, i64 %161)
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* @VERBOSE4, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %156
  %169 = load i32, i32* @stderr, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i8, i8* %171, align 8
  %173 = zext i8 %172 to i32
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %15, %29, %46, %64, %105, %135, %153, %168, %156
  ret void
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @error1(i8*, i8 zeroext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @add_picture(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @next_text(i8*, i8 zeroext, i64) #1

declare dso_local i32 @pop_picture(i32*) #1

declare dso_local i32 @id3_to_utf8(i32*, i8 zeroext, i8*, i32, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
