; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlURIUnescapeString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlURIUnescapeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"unescaping URI value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlURIUnescapeString(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %213

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %213

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i64 @xmlMallocAtomic(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @xmlURIErrMemory(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %213

36:                                               ; preds = %27
  br label %39

37:                                               ; preds = %24
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %209, %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %210

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %201

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %201

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @is_hex(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %201

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @is_hex(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %201

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sge i32 %70, 48
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  br label %122

84:                                               ; preds = %72, %65
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %87, 97
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 102
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 97
  %99 = add nsw i32 %98, 10
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  br label %121

102:                                              ; preds = %89, %84
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 65
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %110, 70
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 65
  %117 = add nsw i32 %116, 10
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %9, align 8
  store i8 %118, i8* %119, align 1
  br label %120

120:                                              ; preds = %112, %107, %102
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %77
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sge i32 %127, 48
  br i1 %128, label %129, label %146

129:                                              ; preds = %122
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sle i32 %132, 57
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = mul nsw i32 %137, 16
  %139 = load i8*, i8** %10, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 48
  %143 = add nsw i32 %138, %142
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %9, align 8
  store i8 %144, i8* %145, align 1
  br label %194

146:                                              ; preds = %129, %122
  %147 = load i8*, i8** %10, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sge i32 %149, 97
  br i1 %150, label %151, label %169

151:                                              ; preds = %146
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sle i32 %154, 102
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = mul nsw i32 %159, 16
  %161 = load i8*, i8** %10, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = sub nsw i32 %163, 97
  %165 = add nsw i32 %160, %164
  %166 = add nsw i32 %165, 10
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %9, align 8
  store i8 %167, i8* %168, align 1
  br label %193

169:                                              ; preds = %151, %146
  %170 = load i8*, i8** %10, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp sge i32 %172, 65
  br i1 %173, label %174, label %192

174:                                              ; preds = %169
  %175 = load i8*, i8** %10, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp sle i32 %177, 70
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load i8*, i8** %9, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = mul nsw i32 %182, 16
  %184 = load i8*, i8** %10, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = sub nsw i32 %186, 65
  %188 = add nsw i32 %183, %187
  %189 = add nsw i32 %188, 10
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %9, align 8
  store i8 %190, i8* %191, align 1
  br label %192

192:                                              ; preds = %179, %174, %169
  br label %193

193:                                              ; preds = %192, %156
  br label %194

194:                                              ; preds = %193, %134
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %10, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %197, 3
  store i32 %198, i32* %6, align 4
  %199 = load i8*, i8** %9, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %9, align 8
  br label %209

201:                                              ; preds = %59, %53, %48, %45
  %202 = load i8*, i8** %10, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %10, align 8
  %204 = load i8, i8* %202, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %9, align 8
  store i8 %204, i8* %205, align 1
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %201, %194
  br label %42

210:                                              ; preds = %42
  %211 = load i8*, i8** %9, align 8
  store i8 0, i8* %211, align 1
  %212 = load i8*, i8** %8, align 8
  store i8* %212, i8** %4, align 8
  br label %213

213:                                              ; preds = %210, %34, %23, %13
  %214 = load i8*, i8** %4, align 8
  ret i8* %214
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlURIErrMemory(i8*) #1

declare dso_local i64 @is_hex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
