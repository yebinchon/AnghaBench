; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_listenToPort.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_listenToPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ANET_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not listening to IPv6: unsupported\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Not listening to IPv4: unsupported\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Could not create server TCP listening socket %s:%d: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ENOPROTOOPT = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i64 0, align 8
@EPFNOSUPPORT = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listenToPort(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %231, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ true, %16 ], [ %22, %20 ]
  br i1 %24, label %25, label %234

25:                                               ; preds = %23
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %126

32:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %36 = call i32 @anetTcp6Server(i32 %33, i32 %34, i8* null, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ANET_ERR, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %32
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @anetNonBlock(i32* null, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %71

61:                                               ; preds = %32
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EAFNOSUPPORT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @LL_WARNING, align 4
  %69 = call i32 (i32, i8*, ...) @serverLog(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %75, %71
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %82 = call i32 @anetTcpServer(i32 %79, i32 %80, i8* null, i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ANET_ERR, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %78
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @anetNonBlock(i32* null, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %117

107:                                              ; preds = %78
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @EAFNOSUPPORT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* @LL_WARNING, align 4
  %115 = call i32 (i32, i8*, ...) @serverLog(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %107
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %75
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %120, %121
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %234

125:                                              ; preds = %118
  br label %165

126:                                              ; preds = %25
  %127 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strchr(i8* %131, i8 signext 58)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %143 = call i32 @anetTcp6Server(i32 %135, i32 %136, i8* %141, i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  br label %164

149:                                              ; preds = %126
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %158 = call i32 @anetTcpServer(i32 %150, i32 %151, i8* %156, i32 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %149, %134
  br label %165

165:                                              ; preds = %164, %125
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ANET_ERR, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %220

174:                                              ; preds = %165
  %175 = load i32, i32* @LL_WARNING, align 4
  %176 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  br label %189

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %182
  %190 = phi i8* [ %187, %182 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %188 ]
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %193 = call i32 (i32, i8*, ...) @serverLog(i32 %175, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %190, i32 %191, i32 %192)
  %194 = load i64, i64* @errno, align 8
  %195 = load i64, i64* @ENOPROTOOPT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %217, label %197

197:                                              ; preds = %189
  %198 = load i64, i64* @errno, align 8
  %199 = load i64, i64* @EPROTONOSUPPORT, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %217, label %201

201:                                              ; preds = %197
  %202 = load i64, i64* @errno, align 8
  %203 = load i64, i64* @ESOCKTNOSUPPORT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %217, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* @errno, align 8
  %207 = load i64, i64* @EPFNOSUPPORT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* @errno, align 8
  %211 = load i64, i64* @EAFNOSUPPORT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* @errno, align 8
  %215 = load i64, i64* @EADDRNOTAVAIL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %209, %205, %201, %197, %189
  br label %231

218:                                              ; preds = %213
  %219 = load i32, i32* @C_ERR, align 4
  store i32 %219, i32* %4, align 4
  br label %236

220:                                              ; preds = %165
  %221 = load i32*, i32** %6, align 8
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @anetNonBlock(i32* null, i32 %226)
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %220, %217
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %16

234:                                              ; preds = %124, %23
  %235 = load i32, i32* @C_OK, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %218
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @anetTcp6Server(i32, i32, i8*, i32) #1

declare dso_local i32 @anetNonBlock(i32*, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @anetTcpServer(i32, i32, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
