; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_h2_frame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_h2_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }
%struct.vlc_http_msg = type { i32, i32, i8*, i8*, i8*, i8*, i32** }

@.str = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"HTTP2-Settings\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c":status\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c":method\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c":scheme\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c":authority\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c":path\00", align 1
@VLC_H2_DEFAULT_MAX_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_frame* @vlc_http_msg_h2_frame(%struct.vlc_http_msg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlc_h2_frame*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8*]*, align 8
  %10 = alloca %struct.vlc_h2_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %16 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %21 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %20, i32 0, i32 6
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcasecmp(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %32 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %31, i32 0, i32 6
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcasecmp(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %43 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %42, i32 0, i32 6
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcasecmp(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %19
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %58 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %59, 5
  %61 = call i8*** @vlc_alloc(i32 %60, i32 16)
  %62 = bitcast i8*** %61 to [2 x i8*]*
  store [2 x i8*]* %62, [2 x i8*]** %9, align 8
  %63 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %64 = icmp eq [2 x i8*]* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %4, align 8
  br label %221

69:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  %70 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %71 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %76 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 1000
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %82 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %83 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %86, i64 %88
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %89, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %92 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %92, i64 %94
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %95, i64 0, i64 1
  store i8* %91, i8** %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %74, %69
  %100 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %101 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %105, i64 %107
  %109 = getelementptr inbounds [2 x i8*], [2 x i8*]* %108, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %109, align 8
  %110 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %111 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %113, i64 %115
  %117 = getelementptr inbounds [2 x i8*], [2 x i8*]* %116, i64 0, i64 1
  store i8* %112, i8** %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %104, %99
  %121 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %122 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i8*], [2 x i8*]* %126, i64 %128
  %130 = getelementptr inbounds [2 x i8*], [2 x i8*]* %129, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %130, align 8
  %131 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %132 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [2 x i8*], [2 x i8*]* %134, i64 %136
  %138 = getelementptr inbounds [2 x i8*], [2 x i8*]* %137, i64 0, i64 1
  store i8* %133, i8** %138, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %125, %120
  %142 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %143 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i8*], [2 x i8*]* %147, i64 %149
  %151 = getelementptr inbounds [2 x i8*], [2 x i8*]* %150, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %153 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [2 x i8*], [2 x i8*]* %155, i64 %157
  %159 = getelementptr inbounds [2 x i8*], [2 x i8*]* %158, i64 0, i64 1
  store i8* %154, i8** %159, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %146, %141
  %163 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %164 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %168, i64 %170
  %172 = getelementptr inbounds [2 x i8*], [2 x i8*]* %171, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %172, align 8
  %173 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %174 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %173, i32 0, i32 5
  %175 = load i8*, i8** %174, align 8
  %176 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [2 x i8*], [2 x i8*]* %176, i64 %178
  %180 = getelementptr inbounds [2 x i8*], [2 x i8*]* %179, i64 0, i64 1
  store i8* %175, i8** %180, align 8
  %181 = load i32, i32* %11, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %167, %162
  %184 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %185 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ugt i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %183
  %189 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %190 = load i32, i32* %11, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i8*], [2 x i8*]* %189, i64 %191
  %193 = bitcast [2 x i8*]* %192 to i8***
  %194 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %195 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %194, i32 0, i32 6
  %196 = load i32**, i32*** %195, align 8
  %197 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %198 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = zext i32 %199 to i64
  %201 = mul i64 %200, 16
  %202 = trunc i64 %201 to i32
  %203 = call i32 @memcpy(i8*** %193, i32** %196, i32 %202)
  %204 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %205 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %188, %183
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @VLC_H2_DEFAULT_MAX_FRAME, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %215 = bitcast [2 x i8*]* %214 to i8***
  %216 = call %struct.vlc_h2_frame* @vlc_h2_frame_headers(i32 %210, i32 %211, i32 %212, i32 %213, i8*** %215)
  store %struct.vlc_h2_frame* %216, %struct.vlc_h2_frame** %10, align 8
  %217 = load [2 x i8*]*, [2 x i8*]** %9, align 8
  %218 = bitcast [2 x i8*]* %217 to i8***
  %219 = call i32 @free(i8*** %218)
  %220 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  store %struct.vlc_h2_frame* %220, %struct.vlc_h2_frame** %4, align 8
  br label %221

221:                                              ; preds = %209, %68
  %222 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  ret %struct.vlc_h2_frame* %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i8*** @vlc_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8***, i32**, i32) #1

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_headers(i32, i32, i32, i32, i8***) #1

declare dso_local i32 @free(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
