; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_parse_status_line.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_parse_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @ngx_http_upstream_check_parse_status_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_check_parse_status_line(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %181, %3
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ult i8* %18, %21
  br i1 %22, label %23, label %184

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %8, align 1
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %180 [
    i32 0, label %27
    i32 1, label %34
    i32 2, label %41
    i32 3, label %48
    i32 4, label %55
    i32 5, label %62
    i32 6, label %73
    i32 7, label %89
    i32 8, label %100
    i32 9, label %116
    i32 10, label %153
    i32 11, label %163
    i32 12, label %169
  ]

27:                                               ; preds = %23
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 72
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %209

33:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %180

34:                                               ; preds = %23
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 84
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @NGX_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %209

40:                                               ; preds = %34
  store i32 2, i32* %10, align 4
  br label %180

41:                                               ; preds = %23
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 84
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %209

47:                                               ; preds = %41
  store i32 3, i32* %10, align 4
  br label %180

48:                                               ; preds = %23
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 80
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %209

54:                                               ; preds = %48
  store i32 4, i32* %10, align 4
  br label %180

55:                                               ; preds = %23
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %209

61:                                               ; preds = %55
  store i32 5, i32* %10, align 4
  br label %180

62:                                               ; preds = %23
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp slt i32 %64, 49
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sgt i32 %68, 57
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @NGX_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %209

72:                                               ; preds = %66
  store i32 6, i32* %10, align 4
  br label %180

73:                                               ; preds = %23
  %74 = load i8, i8* %8, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 7, i32* %10, align 4
  br label %180

78:                                               ; preds = %73
  %79 = load i8, i8* %8, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp slt i32 %80, 48
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sgt i32 %84, 57
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @NGX_ERROR, align 4
  store i32 %87, i32* %4, align 4
  br label %209

88:                                               ; preds = %82
  br label %180

89:                                               ; preds = %23
  %90 = load i8, i8* %8, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp slt i32 %91, 48
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %8, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sgt i32 %95, 57
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %4, align 4
  br label %209

99:                                               ; preds = %93
  store i32 8, i32* %10, align 4
  br label %180

100:                                              ; preds = %23
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 9, i32* %10, align 4
  br label %180

105:                                              ; preds = %100
  %106 = load i8, i8* %8, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp slt i32 %107, 48
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i8, i8* %8, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sgt i32 %111, 57
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @NGX_ERROR, align 4
  store i32 %114, i32* %4, align 4
  br label %209

115:                                              ; preds = %109
  br label %180

116:                                              ; preds = %23
  %117 = load i8, i8* %8, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 32
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %180

121:                                              ; preds = %116
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp slt i32 %123, 48
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i8, i8* %8, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sgt i32 %127, 57
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %121
  %130 = load i32, i32* @NGX_ERROR, align 4
  store i32 %130, i32* %4, align 4
  br label %209

131:                                              ; preds = %125
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 10
  %136 = load i8, i8* %8, align 1
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 %135, %137
  %139 = sub nsw i32 %138, 48
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %152

147:                                              ; preds = %131
  store i32 10, i32* %10, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 -2
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %147, %131
  br label %180

153:                                              ; preds = %23
  %154 = load i8, i8* %8, align 1
  %155 = sext i8 %154 to i32
  switch i32 %155, label %160 [
    i32 32, label %156
    i32 46, label %157
    i32 129, label %158
    i32 128, label %159
  ]

156:                                              ; preds = %153
  store i32 11, i32* %10, align 4
  br label %162

157:                                              ; preds = %153
  store i32 11, i32* %10, align 4
  br label %162

158:                                              ; preds = %153
  store i32 12, i32* %10, align 4
  br label %162

159:                                              ; preds = %153
  br label %192

160:                                              ; preds = %153
  %161 = load i32, i32* @NGX_ERROR, align 4
  store i32 %161, i32* %4, align 4
  br label %209

162:                                              ; preds = %158, %157, %156
  br label %180

163:                                              ; preds = %23
  %164 = load i8, i8* %8, align 1
  %165 = sext i8 %164 to i32
  switch i32 %165, label %168 [
    i32 129, label %166
    i32 128, label %167
  ]

166:                                              ; preds = %163
  store i32 12, i32* %10, align 4
  br label %168

167:                                              ; preds = %163
  br label %192

168:                                              ; preds = %163, %166
  br label %180

169:                                              ; preds = %23
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i8, i8* %8, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %192

178:                                              ; preds = %169
  %179 = load i32, i32* @NGX_ERROR, align 4
  store i32 %179, i32* %4, align 4
  br label %209

180:                                              ; preds = %23, %168, %162, %152, %120, %115, %104, %99, %88, %77, %72, %61, %54, %47, %40, %33
  br label %181

181:                                              ; preds = %180
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %9, align 8
  br label %17

184:                                              ; preds = %17
  %185 = load i8*, i8** %9, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %191, i32* %4, align 4
  br label %209

192:                                              ; preds = %177, %167, %159
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load i8*, i8** %9, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %201, %192
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  store i32 0, i32* %207, align 4
  %208 = load i32, i32* @NGX_OK, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %205, %184, %178, %160, %129, %113, %97, %86, %70, %59, %52, %45, %38, %31
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
