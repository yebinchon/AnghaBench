; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_readstdin.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_readstdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inputeof = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"read stdin\00", align 1
@cbyte = common dso_local global i32 0, align 4
@bracket = common dso_local global i64 0, align 8
@addrtextbuf = common dso_local global i32* null, align 8
@inbuf = common dso_local global i32 0, align 4
@inbyte = common dso_local global i32 0, align 4
@bytes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @readstdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readstdin() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %8 = call i32 @read(i32 0, i8* %7, i32 512)
  store i32 %8, i32* %3, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* @inputeof, align 4
  br label %188

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %188

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @sysfail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  br label %6

26:                                               ; preds = %6
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %183, %26
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %188

31:                                               ; preds = %28
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @cbyte, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i64, i64* @bracket, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 91
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** @addrtextbuf, align 8
  %46 = load i32, i32* @inbuf, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @inbuf, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = call i32 (...) @startaddr()
  br label %182

51:                                               ; preds = %40, %37, %31
  %52 = load i32, i32* @cbyte, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64, i64* @bracket, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @isalnum(i32 %58) #3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @queueoutchar(i32 %62)
  %64 = call i32 (...) @startaddr()
  br label %181

65:                                               ; preds = %57, %54, %51
  %66 = load i32, i32* @cbyte, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %65
  %69 = load i32, i32* @inbyte, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 48
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i32*, i32** @bytes, align 8
  %79 = load i32, i32* @cbyte, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 10
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 48
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %5, align 4
  %87 = icmp sle i32 %86, 255
  br i1 %87, label %88, label %102

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** @bytes, align 8
  %91 = load i32, i32* @cbyte, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32*, i32** @addrtextbuf, align 8
  %96 = load i32, i32* @inbuf, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @inbuf, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* @inbyte, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @inbyte, align 4
  br label %180

102:                                              ; preds = %77, %74, %71, %68, %65
  %103 = load i32, i32* @cbyte, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i32, i32* @cbyte, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load i32, i32* @inbyte, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 46
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i32*, i32** @bytes, align 8
  %116 = load i32, i32* @cbyte, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @cbyte, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** @addrtextbuf, align 8
  %122 = load i32, i32* @inbuf, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @inbuf, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  store i32 0, i32* @inbyte, align 4
  br label %179

126:                                              ; preds = %111, %108, %105, %102
  %127 = load i32, i32* @cbyte, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %146

129:                                              ; preds = %126
  %130 = load i32, i32* @inbyte, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i64, i64* @bracket, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 93
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = load i32*, i32** @addrtextbuf, align 8
  %141 = load i32, i32* @inbuf, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @inbuf, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = call i32 (...) @procaddr()
  br label %178

146:                                              ; preds = %135, %132, %129, %126
  %147 = load i32, i32* @cbyte, align 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load i32, i32* @inbyte, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load i64, i64* @bracket, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @isalnum(i32 %156) #3
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = call i32 (...) @procaddr()
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @queueoutchar(i32 %161)
  %163 = call i32 (...) @startaddr()
  br label %177

164:                                              ; preds = %155, %152, %149, %146
  %165 = call i32 (...) @restartbuf()
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @queueoutchar(i32 %166)
  store i32 -1, i32* @cbyte, align 4
  %168 = load i64, i64* @bracket, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @isalnum(i32 %171) #3
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = call i32 (...) @startaddr()
  br label %176

176:                                              ; preds = %174, %170, %164
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177, %138
  br label %179

179:                                              ; preds = %178, %114
  br label %180

180:                                              ; preds = %179, %88
  br label %181

181:                                              ; preds = %180, %61
  br label %182

182:                                              ; preds = %181, %43
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %3, align 4
  %186 = load i8*, i8** %2, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %2, align 8
  br label %28

188:                                              ; preds = %13, %18, %28
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @sysfail(i8*) #1

declare dso_local i32 @startaddr(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32 @queueoutchar(i32) #1

declare dso_local i32 @procaddr(...) #1

declare dso_local i32 @restartbuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
