; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_append_typedesc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_append_typedesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@VT_TYPEMASK = common dso_local global i32 0, align 4
@VT_PTR = common dso_local global i32 0, align 4
@VT_SAFEARRAY = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@VT_CARRAY = common dso_local global i32 0, align 4
@VT_USERDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Mixing in-place, VT: 0x%x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@VT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*)* @WMSFT_append_typedesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMSFT_append_typedesc(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %196

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32* %10, i32** %8, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32* %11, i32** %9, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VT_TYPEMASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @VT_PTR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @VT_SAFEARRAY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38, %29
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @WMSFT_append_typedesc(%struct.TYPE_11__* %46, %struct.TYPE_10__* %47, i32* %17, i32* %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @VT_BYREF, align 4
  %56 = or i32 %54, %55
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 32767, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %126

66:                                               ; preds = %38
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @VT_CARRAY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, 2147352576
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = call i32 @WMSFT_append_arraydesc(i32 %79, %struct.TYPE_10__* %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 32766, i32* %83, align 4
  br label %125

84:                                               ; preds = %66
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @VT_USERDEFINED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, 2147418112
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 32767, i32* %99, align 4
  br label %124

100:                                              ; preds = %84
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %14, align 4
  switch i32 %105, label %112 [
    i32 130, label %106
    i32 129, label %108
    i32 128, label %110
  ]

106:                                              ; preds = %100
  %107 = load i32, i32* @VT_I4, align 4
  store i32 %107, i32* %15, align 4
  br label %114

108:                                              ; preds = %100
  %109 = load i32, i32* @VT_UI4, align 4
  store i32 %109, i32* %15, align 4
  br label %114

110:                                              ; preds = %100
  %111 = load i32, i32* @VT_EMPTY, align 4
  store i32 %111, i32* %15, align 4
  br label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %112, %110, %108, %106
  %115 = load i32, i32* %15, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %15, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 -2147483648, %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %119, %122
  store i32 %123, i32* %5, align 4
  br label %196

124:                                              ; preds = %88
  br label %125

125:                                              ; preds = %124, %70
  br label %126

126:                                              ; preds = %125, %42
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %16, align 8
  br label %131

131:                                              ; preds = %148, %126
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %131
  %139 = load i8*, i8** %16, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %144 = call i32 @memcmp(i8* %142, i32* %143, i32 8)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %5, align 4
  br label %196

148:                                              ; preds = %138
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 %150, 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %12, align 4
  br label %131

153:                                              ; preds = %131
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %175, label %166

166:                                              ; preds = %153
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @heap_alloc(i32 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i8* %171, i8** %174, align 8
  store i8* %171, i8** %16, align 8
  br label %188

175:                                              ; preds = %153
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @heap_realloc(i8* %179, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  store i8* %184, i8** %16, align 8
  br label %188

188:                                              ; preds = %175, %166
  %189 = load i8*, i8** %16, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %194 = call i32 @memcpy(i8* %192, i32* %193, i32 8)
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %188, %146, %114, %20
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @WMSFT_append_arraydesc(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i8* @heap_realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
