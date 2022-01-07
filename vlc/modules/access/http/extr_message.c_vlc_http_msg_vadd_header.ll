; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_vadd_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_vadd_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i8***, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Set-Cookie\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%c %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_http_msg*, i8*, i8*, i32)* @vlc_http_msg_vadd_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_http_msg_vadd_header(%struct.vlc_http_msg* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca [2 x i8*]*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @vlc_http_is_token(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %227

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vasprintf(i8** %10, i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %227

34:                                               ; preds = %24
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %53, %34
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %12, align 8
  store i8 32, i8* %51, align 1
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  br label %36

56:                                               ; preds = %36
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @strspn(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %13, align 8
  %65 = icmp uge i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %13, align 8
  %75 = sub i64 %73, %74
  %76 = add i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memmove(i8* %68, i8* %71, i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %61, %56
  br label %85

85:                                               ; preds = %110, %84
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %106, label %97

97:                                               ; preds = %88
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %97, %88
  %107 = phi i1 [ true, %88 ], [ %105, %97 ]
  br label %108

108:                                              ; preds = %106, %85
  %109 = phi i1 [ false, %85 ], [ %107, %106 ]
  br i1 %109, label %110, label %116

110:                                              ; preds = %108
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 0, i8* %115, align 1
  br label %85

116:                                              ; preds = %108
  %117 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i64 @vlc_http_msg_find_header(%struct.vlc_http_msg* %117, i8* %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %14, align 8
  %121 = icmp uge i64 %120, 0
  br i1 %121, label %122, label %170

122:                                              ; preds = %116
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @strcasecmp(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %122
  %127 = load i8*, i8** %7, align 8
  %128 = call i64 @strcasecmp(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 44, i32 59
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %16, align 1
  %133 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %134 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %133, i32 0, i32 0
  %135 = load i8***, i8**** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds i8**, i8*** %135, i64 %136
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %16, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %140, i8 signext %141, i8* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32, i32* %17, align 4
  %147 = icmp eq i32 %146, -1
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %227

152:                                              ; preds = %126
  %153 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %154 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %153, i32 0, i32 0
  %155 = load i8***, i8**** %154, align 8
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds i8**, i8*** %155, i64 %156
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %15, align 8
  %163 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %164 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %163, i32 0, i32 0
  %165 = load i8***, i8**** %164, align 8
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds i8**, i8*** %165, i64 %166
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  store i8* %162, i8** %169, align 8
  store i32 0, i32* %5, align 4
  br label %227

170:                                              ; preds = %122, %116
  %171 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %172 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %171, i32 0, i32 0
  %173 = load i8***, i8**** %172, align 8
  %174 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %175 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = mul i64 16, %178
  %180 = trunc i64 %179 to i32
  %181 = call i8*** @realloc(i8*** %173, i32 %180)
  %182 = bitcast i8*** %181 to [2 x i8*]*
  store [2 x i8*]* %182, [2 x i8*]** %18, align 8
  %183 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %184 = icmp eq [2 x i8*]* %183, null
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %170
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @free(i8* %189)
  store i32 -1, i32* %5, align 4
  br label %227

191:                                              ; preds = %170
  %192 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %193 = bitcast [2 x i8*]* %192 to i8***
  %194 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %195 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %194, i32 0, i32 0
  store i8*** %193, i8**** %195, align 8
  %196 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %197 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds [2 x i8*], [2 x i8*]* %199, i64 %200
  store [2 x i8*]* %201, [2 x i8*]** %18, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = call i8* @strdup(i8* %202)
  %204 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %205 = getelementptr inbounds [2 x i8*], [2 x i8*]* %204, i64 0
  %206 = getelementptr inbounds [2 x i8*], [2 x i8*]* %205, i64 0, i64 0
  store i8* %203, i8** %206, align 8
  %207 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %208 = getelementptr inbounds [2 x i8*], [2 x i8*]* %207, i64 0
  %209 = getelementptr inbounds [2 x i8*], [2 x i8*]* %208, i64 0, i64 0
  %210 = load i8*, i8** %209, align 8
  %211 = icmp eq i8* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %191
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 @free(i8* %216)
  store i32 -1, i32* %5, align 4
  br label %227

218:                                              ; preds = %191
  %219 = load i8*, i8** %10, align 8
  %220 = load [2 x i8*]*, [2 x i8*]** %18, align 8
  %221 = getelementptr inbounds [2 x i8*], [2 x i8*]* %220, i64 0
  %222 = getelementptr inbounds [2 x i8*], [2 x i8*]* %221, i64 0, i64 1
  store i8* %219, i8** %222, align 8
  %223 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %224 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 8
  store i32 0, i32* %5, align 4
  br label %227

227:                                              ; preds = %218, %215, %188, %152, %151, %33, %22
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @vlc_http_is_token(i8*) #1

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @vlc_http_msg_find_header(%struct.vlc_http_msg*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8 signext, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8*** @realloc(i8***, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
