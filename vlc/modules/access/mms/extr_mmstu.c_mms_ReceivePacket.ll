; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ReceivePacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ReceivePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i64, i64 }

@MMS_CMD_HEADERSIZE = common dso_local global i64 0, align 8
@MMS_PROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"cannot fill buffer\00", align 1
@MMS_BUFFER_SIZE = common dso_local global i64 0, align 8
@MMS_PACKET_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @mms_ReceivePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_ReceivePacket(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  br label %13

13:                                               ; preds = %208, %1
  store i32 1, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMS_CMD_HEADERSIZE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 4
  %24 = call i32 @GetDWLE(i64 %23)
  %25 = icmp eq i32 %24, -1341392178
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 8
  %31 = call i32 @GetDWLE(i64 %30)
  %32 = add nsw i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ule i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %26
  br label %52

40:                                               ; preds = %19
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 6
  %45 = call i64 @GetWLE(i64 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %13
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MMS_PROTO_UDP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 8
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 6
  %69 = call i64 @GetWLE(i64 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp sle i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %64, %59, %53
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = call i64 @NetFillBuffer(%struct.TYPE_9__* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = call i32 @msg_Warn(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

86:                                               ; preds = %79, %76
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %142

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 4
  %96 = call i32 @GetDWLE(i64 %95)
  %97 = icmp eq i32 %96, -1341392178
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @mms_ParseCommand(%struct.TYPE_9__* %99, i64 %102, i64 %105, i64* %8)
  store i32 %106, i32* %5, align 4
  br label %116

107:                                              ; preds = %91
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mms_ParsePacket(%struct.TYPE_9__* %108, i64 %111, i64 %114, i64* %8)
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %107, %98
  %117 = load i64, i64* %8, align 8
  %118 = icmp ugt i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %129, %130
  %132 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %133 = load i64, i64* %8, align 8
  %134 = sub i64 %132, %133
  %135 = call i32 @memmove(i64 %126, i64 %131, i64 %134)
  br label %136

136:                                              ; preds = %123, %119, %116
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, %137
  store i64 %141, i64* %139, align 8
  br label %185

142:                                              ; preds = %86
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %184

147:                                              ; preds = %142
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = call i32 @mms_ParsePacket(%struct.TYPE_9__* %148, i64 %151, i64 %155, i64* %9)
  store i32 %156, i32* %6, align 4
  %157 = load i64, i64* %9, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %147
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = add i64 %169, %170
  %172 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %173 = load i64, i64* %9, align 8
  %174 = sub i64 %172, %173
  %175 = call i32 @memmove(i64 %166, i64 %171, i64 %174)
  br label %176

176:                                              ; preds = %163, %159, %147
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = sub i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 8
  br label %184

184:                                              ; preds = %176, %142
  br label %185

185:                                              ; preds = %184, %136
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @MMS_PACKET_CMD, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 27
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = call i32 @mms_CommandSend(%struct.TYPE_9__* %195, i32 27, i32 0, i32 0, i32* null, i32 0)
  store i32 -1, i32* %5, align 4
  br label %197

197:                                              ; preds = %194, %189, %185
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, -1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i32, i32* %5, align 4
  store i32 %201, i32* %2, align 4
  br label %209

202:                                              ; preds = %197
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, -1
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %209

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207
  br label %13

209:                                              ; preds = %205, %200, %83
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @GetDWLE(i64) #1

declare dso_local i64 @GetWLE(i64) #1

declare dso_local i64 @NetFillBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mms_ParseCommand(%struct.TYPE_9__*, i64, i64, i64*) #1

declare dso_local i32 @mms_ParsePacket(%struct.TYPE_9__*, i64, i64, i64*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @mms_CommandSend(%struct.TYPE_9__*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
