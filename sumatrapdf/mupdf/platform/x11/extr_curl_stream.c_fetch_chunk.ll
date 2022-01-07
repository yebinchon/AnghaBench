; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_fetch_chunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_fetch_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curlstate = type { i32, i32, i32, i64, i64, i8*, i64, i64, i32, i64, i64, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_NOBODY = common dso_local global i32 0, align 4
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_WRITEHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@BLOCK_SIZE = common dso_local global i32 0, align 4
@CURLOPT_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"we got it all, in one request.\0A\00", align 1
@BLOCK_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"we got it all block=%d map_length=%d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"block requested was %d, fetching %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"requesting range %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.curlstate*)* @fetch_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_chunk(%struct.curlstate* %0) #0 {
  %2 = alloca %struct.curlstate*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.curlstate* %0, %struct.curlstate** %2, align 8
  %10 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %11 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @curl_easy_perform(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @CURLE_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %19 = call i32 @lock(%struct.curlstate* %18)
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %22 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %21, i32 0, i32 11
  store i64 %20, i64* %22, align 8
  %23 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %24 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %26 = call i32 @unlock(%struct.curlstate* %25)
  br label %234

27:                                               ; preds = %1
  %28 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %29 = call i32 @lock(%struct.curlstate* %28)
  %30 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %31 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %30, i32 0, i32 10
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %27
  %35 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %36 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %35, i32 0, i32 10
  store i64 0, i64* %36, align 8
  %37 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %38 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CURLOPT_NOBODY, align 4
  %41 = call i32 @curl_easy_setopt(i32 %39, i32 %40, i8* null)
  %42 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %43 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %46 = call i32 @curl_easy_setopt(i32 %44, i32 %45, i8* null)
  %47 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %48 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CURLOPT_WRITEHEADER, align 4
  %51 = call i32 @curl_easy_setopt(i32 %49, i32 %50, i8* null)
  %52 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %53 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %34
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %58 = load i32, i32* @BLOCK_SIZE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = call i32 @fz_snprintf(i8* %57, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 0, i64 %60)
  %62 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %63 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CURLOPT_RANGE, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %67 = call i32 @curl_easy_setopt(i32 %64, i32 %65, i8* %66)
  %68 = load i32, i32* @BLOCK_SIZE, align 4
  %69 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %70 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %56, %34
  %72 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %73 = call i32 @unlock(%struct.curlstate* %72)
  br label %234

74:                                               ; preds = %27
  %75 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %76 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = call i32 @DEBUG_MESSAGE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %82 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %84 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %86 = call i32 @unlock(%struct.curlstate* %85)
  br label %234

87:                                               ; preds = %74
  %88 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %89 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BLOCK_SHIFT, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %90, %92
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %98 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BLOCK_SHIFT, align 4
  %101 = ashr i32 %99, %100
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %4, align 8
  %103 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %104 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %164

107:                                              ; preds = %87
  %108 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %109 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %8, align 8
  %111 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %112 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %111, i32 0, i32 5
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %125, %107
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = load i64, i64* %4, align 8
  %121 = call i64 @HAVE_BLOCK(i8* %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i1 [ false, %114 ], [ %122, %118 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i64, i64* %4, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %4, align 8
  br label %114

128:                                              ; preds = %123
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  store i64 0, i64* %4, align 8
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* %4, align 8
  %140 = call i64 @HAVE_BLOCK(i8* %138, i64 %139)
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %137, %133
  %143 = phi i1 [ false, %133 ], [ %141, %137 ]
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %4, align 8
  br label %133

147:                                              ; preds = %142
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @DEBUG_MESSAGE(i8* %154)
  %156 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %157 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %159 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %161 = call i32 @unlock(%struct.curlstate* %160)
  br label %234

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %128
  br label %171

164:                                              ; preds = %87
  %165 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %166 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  %167 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %168 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %170 = call i32 @unlock(%struct.curlstate* %169)
  br label %234

171:                                              ; preds = %163
  %172 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %173 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BLOCK_SHIFT, align 4
  %176 = ashr i32 %174, %175
  %177 = load i64, i64* %4, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @DEBUG_MESSAGE(i8* %178)
  %180 = load i64, i64* %4, align 8
  %181 = load i32, i32* @BLOCK_SHIFT, align 4
  %182 = zext i32 %181 to i64
  %183 = shl i64 %180, %182
  store i64 %183, i64* %5, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i32, i32* @BLOCK_SIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %184, %186
  %188 = sub i64 %187, 1
  store i64 %188, i64* %6, align 8
  %189 = load i64, i64* %5, align 8
  %190 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %191 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %190, i32 0, i32 6
  store i64 %189, i64* %191, align 8
  %192 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %193 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %171
  %197 = load i64, i64* %6, align 8
  %198 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %199 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp uge i64 %197, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %204 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, 1
  store i64 %206, i64* %6, align 8
  br label %207

207:                                              ; preds = %202, %196, %171
  %208 = load i64, i64* %6, align 8
  %209 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %210 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %209, i32 0, i32 7
  store i64 %208, i64* %210, align 8
  %211 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %212 = load i64, i64* %5, align 8
  %213 = load i64, i64* %6, align 8
  %214 = call i32 @fz_snprintf(i8* %211, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %212, i64 %213)
  %215 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %216 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @BLOCK_SIZE, align 4
  %219 = sext i32 %218 to i64
  %220 = add i64 %217, %219
  %221 = trunc i64 %220 to i32
  %222 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %223 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %225 = call i32 @unlock(%struct.curlstate* %224)
  %226 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %227 = call i32 @DEBUG_MESSAGE(i8* %226)
  %228 = load %struct.curlstate*, %struct.curlstate** %2, align 8
  %229 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @CURLOPT_RANGE, align 4
  %232 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %233 = call i32 @curl_easy_setopt(i32 %230, i32 %231, i8* %232)
  br label %234

234:                                              ; preds = %207, %164, %151, %79, %71, %17
  ret void
}

declare dso_local i64 @curl_easy_perform(i32) #1

declare dso_local i32 @lock(%struct.curlstate*) #1

declare dso_local i32 @unlock(%struct.curlstate*) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, i8*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @DEBUG_MESSAGE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HAVE_BLOCK(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
