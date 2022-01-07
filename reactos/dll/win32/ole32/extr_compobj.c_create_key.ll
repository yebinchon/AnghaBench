; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_create_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, %struct.TYPE_6__*)* @create_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_key(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to i64*
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = call i64 @NtCreateKey(i64* %18, i32 %19, %struct.TYPE_6__* %20, i32 0, i32* null, i32 0, i32* null)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %171

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 1
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %54, %25
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 92
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi i1 [ false, %41 ], [ %51, %45 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %14, align 8
  br label %41

57:                                               ; preds = %52
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %4, align 8
  br label %173

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %68, align 8
  br label %69

69:                                               ; preds = %140, %63
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %141

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %78, %79
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = call i64 @NtCreateKey(i64* %9, i32 %84, %struct.TYPE_6__* %85, i32 0, i32* null, i32 0, i32* null)
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %73
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @NtClose(i64 %95)
  br label %97

97:                                               ; preds = %92, %73
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i64, i64* %8, align 8
  store i64 %101, i64* %4, align 8
  br label %173

102:                                              ; preds = %97
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %119, %102
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i8*, i8** %11, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 92
  br label %117

117:                                              ; preds = %110, %106
  %118 = phi i1 [ false, %106 ], [ %116, %110 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i64, i64* %14, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %14, align 8
  br label %106

122:                                              ; preds = %117
  %123 = load i64, i64* %14, align 8
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %137, %122
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %15, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i8*, i8** %11, align 8
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 92
  br label %135

135:                                              ; preds = %128, %124
  %136 = phi i1 [ false, %124 ], [ %134, %128 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %14, align 8
  br label %124

140:                                              ; preds = %135
  br label %69

141:                                              ; preds = %69
  %142 = load i8*, i8** %11, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %13, align 8
  %148 = sub i64 %146, %147
  %149 = mul i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %150, i32* %151, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = bitcast i32* %155 to i64*
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = call i64 @NtCreateKey(i64* %156, i32 %157, %struct.TYPE_6__* %158, i32 0, i32* null, i32 0, i32* null)
  store i64 %159, i64* %8, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %141
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @NtClose(i64 %168)
  br label %170

170:                                              ; preds = %165, %141
  br label %171

171:                                              ; preds = %170, %3
  %172 = load i64, i64* %8, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %171, %100, %61
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local i64 @NtCreateKey(i64*, i32, %struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
