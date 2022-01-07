; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_set_textfont_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_set_textfont_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8* }

@S_OK = common dso_local global i32 0, align 4
@CO_E_RELEASED = common dso_local global i32 0, align 4
@textfont_prop_masks = common dso_local global i8*** null, align 8
@tomTrue = common dso_local global i32 0, align 4
@tomAutoColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unhandled font property %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)* @set_textfont_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_textfont_prop(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 140
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SysFreeString(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SysAllocString(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %39, i32* %46, align 4
  br label %57

47:                                               ; preds = %23
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = bitcast %struct.TYPE_10__* %53 to i8*
  %56 = bitcast %struct.TYPE_10__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  br label %57

57:                                               ; preds = %47, %26
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %200

59:                                               ; preds = %18
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_12__* @get_range_reole(i32 %62)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %8, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @CO_E_RELEASED, align 4
  store i32 %66, i32* %4, align 4
  br label %200

67:                                               ; preds = %59
  %68 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 64)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 64, i32* %69, align 8
  %70 = load i8***, i8**** @textfont_prop_masks, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8**, i8*** %70, i64 %72
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 12
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %172 [
    i32 151, label %79
    i32 148, label %79
    i32 147, label %79
    i32 144, label %79
    i32 146, label %79
    i32 143, label %79
    i32 139, label %79
    i32 137, label %79
    i32 136, label %79
    i32 134, label %79
    i32 132, label %79
    i32 131, label %79
    i32 130, label %79
    i32 129, label %79
    i32 150, label %97
    i32 149, label %102
    i32 145, label %102
    i32 142, label %132
    i32 141, label %137
    i32 138, label %142
    i32 135, label %147
    i32 133, label %152
    i32 128, label %157
    i32 140, label %162
  ]

79:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @tomTrue, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8***, i8**** @textfont_prop_masks, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8**, i8*** %86, i64 %88
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %85
  %95 = phi i8* [ %92, %85 ], [ null, %93 ]
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 10
  store i8* %95, i8** %96, align 8
  br label %176

97:                                               ; preds = %67
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 11
  store i32 %100, i32* %101, align 8
  br label %176

102:                                              ; preds = %67, %67
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @tomAutoColor, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i8***, i8**** @textfont_prop_masks, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8**, i8*** %109, i64 %111
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 10
  store i8* %115, i8** %116, align 8
  br label %131

117:                                              ; preds = %102
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 149
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 9
  store i32 %123, i32* %124, align 4
  br label %130

125:                                              ; preds = %117
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 8
  store i32 %128, i32* %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %108
  br label %176

132:                                              ; preds = %67
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 7
  store i32 %135, i32* %136, align 4
  br label %176

137:                                              ; preds = %67
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 6
  store i32 %140, i32* %141, align 8
  br label %176

142:                                              ; preds = %67
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  store i32 %145, i32* %146, align 4
  br label %176

147:                                              ; preds = %67
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  store i32 %150, i32* %151, align 8
  br label %176

152:                                              ; preds = %67
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  br label %176

157:                                              ; preds = %67
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32 %160, i32* %161, align 8
  br label %176

162:                                              ; preds = %67
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ARRAY_SIZE(i32 %169)
  %171 = call i32 @lstrcpynW(i32 %164, i32 %167, i32 %170)
  br label %176

172:                                              ; preds = %67
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @E_FAIL, align 4
  store i32 %175, i32* %4, align 4
  br label %200

176:                                              ; preds = %162, %157, %152, %147, %142, %137, %132, %131, %97, %94
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ITextRange_GetStart(i32 %179, i32* %12)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ITextRange_GetEnd(i32 %183, i32* %13)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @ME_CursorFromCharOfs(i32 %187, i32 %188, i32* %9)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @ME_CursorFromCharOfs(i32 %192, i32 %193, i32* %10)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ME_SetCharFormat(i32 %197, i32* %9, i32* %10, %struct.TYPE_13__* %11)
  %199 = load i32, i32* @S_OK, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %176, %172, %65, %57
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SysAllocString(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @get_range_reole(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @lstrcpynW(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ITextRange_GetStart(i32, i32*) #1

declare dso_local i32 @ITextRange_GetEnd(i32, i32*) #1

declare dso_local i32 @ME_CursorFromCharOfs(i32, i32, i32*) #1

declare dso_local i32 @ME_SetCharFormat(i32, i32*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
