; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_testJustification.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_testJustification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i8 }
%struct.err = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"GetTextExtentPointW() for \22%.*s\22 should have returned a width of %d, not %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.TYPE_9__*)* @testJustification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testJustification(i32 %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_7__, align 1
  %16 = alloca [20 x %struct.err], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @GetTextMetricsA(i32 %24, %struct.TYPE_7__* %15)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %200, %3
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %83, %41
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %90

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %60, %63
  br label %65

65:                                               ; preds = %56, %51
  %66 = phi i1 [ false, %51 ], [ %64, %56 ]
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %51

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @SetTextJustification(i32 %71, i64 0, i64 0)
  %73 = load i32, i32* %4, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sub nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @GetTextExtentPoint32A(i32 %73, i8* %74, i32 %81, %struct.TYPE_8__* %14)
  br label %83

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %9, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %43, label %90

90:                                               ; preds = %83, %49
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %102, %90
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %13, align 8
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %8, align 8
  br label %93

107:                                              ; preds = %93
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %8, align 8
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %5, align 8
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @SetTextJustification(i32 %118, i64 0, i64 0)
  %120 = load i32, i32* %4, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @GetTextExtentPoint32A(i32 %120, i8* %121, i32 %127, %struct.TYPE_8__* %14)
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %183

133:                                              ; preds = %117
  %134 = load i64, i64* %8, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %183

136:                                              ; preds = %133
  %137 = load i32, i32* %4, align 4
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %138, %140
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @SetTextJustification(i32 %137, i64 %141, i64 %142)
  %144 = load i32, i32* %4, align 4
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 @GetTextExtentPoint32A(i32 %144, i8* %145, i32 %151, %struct.TYPE_8__* %14)
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %136
  %158 = load i64, i64* %10, align 8
  %159 = icmp ult i64 %158, 19
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i8*, i8** %12, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.err, %struct.err* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 16
  %165 = load i8*, i8** %13, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.err, %struct.err* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.err, %struct.err* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 4
  %180 = load i64, i64* %10, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %10, align 8
  br label %182

182:                                              ; preds = %160, %157, %136
  br label %183

183:                                              ; preds = %182, %133, %117
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %7, align 8
  %187 = add nsw i64 %186, %185
  store i64 %187, i64* %7, align 8
  %188 = load i8*, i8** %13, align 8
  store i8* %188, i8** %5, align 8
  br label %189

189:                                              ; preds = %183
  %190 = load i8*, i8** %5, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i64, i64* %7, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %195, %198
  br label %200

200:                                              ; preds = %194, %189
  %201 = phi i1 [ false, %189 ], [ %199, %194 ]
  br i1 %201, label %29, label %202

202:                                              ; preds = %200
  store i64 0, i64* %11, align 8
  br label %203

203:                                              ; preds = %231, %202
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %10, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %234

207:                                              ; preds = %203
  %208 = load i64, i64* %11, align 8
  %209 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.err, %struct.err* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %9, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %11, align 8
  %217 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %216
  %218 = getelementptr inbounds %struct.err, %struct.err* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i64, i64* %11, align 8
  %221 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.err, %struct.err* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 16
  %224 = load i64, i64* %9, align 8
  %225 = load i64, i64* %11, align 8
  %226 = getelementptr inbounds [20 x %struct.err], [20 x %struct.err]* %16, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.err, %struct.err* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 @ok(i32 %215, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %219, i8* %223, i64 %224, i64 %229)
  br label %231

231:                                              ; preds = %207
  %232 = load i64, i64* %11, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %11, align 8
  br label %203

234:                                              ; preds = %203
  ret void
}

declare dso_local i32 @GetTextMetricsA(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SetTextJustification(i32, i64, i64) #1

declare dso_local i32 @GetTextExtentPoint32A(i32, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
