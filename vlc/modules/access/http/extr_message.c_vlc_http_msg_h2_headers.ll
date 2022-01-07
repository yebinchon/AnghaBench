; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_h2_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_h2_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i64, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c":status\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c":method\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c":scheme\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c":authority\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c":path\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_msg_h2_headers(i32 %0, [2 x i8*]* %1) #0 {
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*]*, align 8
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store [2 x i8*]* %1, [2 x i8*]** %5, align 8
  %12 = call %struct.vlc_http_msg* @vlc_http_resp_create(i32 0)
  store %struct.vlc_http_msg* %12, %struct.vlc_http_msg** %6, align 8
  %13 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %14 = icmp eq %struct.vlc_http_msg* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %191

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %170, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %173

24:                                               ; preds = %20
  %25 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 %27
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %31, i64 %33
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %34, i64 0, i64 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %24
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strtoul(i8* %41, i8** %10, i32 10)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %44 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %11, align 8
  %49 = icmp ugt i64 %48, 999
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %47, %40
  br label %186

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %59 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %170

60:                                               ; preds = %24
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %66 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %186

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = call i8* @strdup(i8* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %75 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %77 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %186

84:                                               ; preds = %70
  %85 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %86 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %85, i32 0, i32 0
  store i64 -1, i64* %86, align 8
  br label %170

87:                                               ; preds = %60
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %87
  %92 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %93 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %186

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %102 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %104 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %186

111:                                              ; preds = %97
  br label %170

112:                                              ; preds = %87
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %112
  %117 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %118 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %186

122:                                              ; preds = %116
  %123 = load i8*, i8** %9, align 8
  %124 = call i8* @strdup(i8* %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %127 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %129 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %186

136:                                              ; preds = %122
  br label %170

137:                                              ; preds = %112
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %162, label %141

141:                                              ; preds = %137
  %142 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %143 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %186

147:                                              ; preds = %141
  %148 = load i8*, i8** %9, align 8
  %149 = call i8* @strdup(i8* %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %152 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %151, i32 0, i32 2
  store i32* %150, i32** %152, align 8
  %153 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %154 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  %157 = zext i1 %156 to i32
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %147
  br label %186

161:                                              ; preds = %147
  br label %170

162:                                              ; preds = %137
  %163 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i64 @vlc_http_msg_add_header(%struct.vlc_http_msg* %163, i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %186

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %161, %136, %111, %84, %56
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %20

173:                                              ; preds = %20
  %174 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %175 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ult i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %180 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  %183 = zext i1 %182 to i32
  %184 = icmp eq i32 %178, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %173
  br label %186

186:                                              ; preds = %185, %168, %160, %146, %135, %121, %110, %96, %83, %69, %55
  %187 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %188 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %187)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %6, align 8
  br label %189

189:                                              ; preds = %186, %173
  %190 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  store %struct.vlc_http_msg* %190, %struct.vlc_http_msg** %3, align 8
  br label %191

191:                                              ; preds = %189, %18
  %192 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  ret %struct.vlc_http_msg* %192
}

declare dso_local %struct.vlc_http_msg* @vlc_http_resp_create(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
