; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_routing_req.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_routing_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i32, i64, i32* }

@NUM_CLIENT_CONNECTIONS = common dso_local global i64 0, align 8
@NUM_RESERVED_PORTS = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32*)* @handle_TCP_routing_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_TCP_routing_req(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 -1, i64* %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %18
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @public_key_cmp(i32* %22, i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @send_routing_response(%struct.TYPE_10__* %27, i64 0, i32* %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %217

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %217

33:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @NUM_CLIENT_CONNECTIONS, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @public_key_cmp(i32* %48, i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @NUM_RESERVED_PORTS, align 8
  %62 = add i64 %60, %61
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @send_routing_response(%struct.TYPE_10__* %59, i64 %62, i32* %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %217

67:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %217

68:                                               ; preds = %47
  br label %75

69:                                               ; preds = %38
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %34

79:                                               ; preds = %34
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @send_routing_response(%struct.TYPE_10__* %83, i64 0, i32* %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %217

88:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %217

89:                                               ; preds = %79
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @NUM_RESERVED_PORTS, align 8
  %93 = add i64 %91, %92
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @send_routing_response(%struct.TYPE_10__* %90, i64 %93, i32* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %217

99:                                               ; preds = %89
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %217

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %119 = call i32 @memcpy(i32* %116, i32* %117, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @get_TCP_connection_index(%struct.TYPE_9__* %120, i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %216

125:                                              ; preds = %103
  store i64 -1, i64* %13, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %130
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %8, align 8
  br label %132

132:                                              ; preds = %161, %125
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @NUM_CLIENT_CONNECTIONS, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %160

145:                                              ; preds = %136
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i64 @public_key_cmp(i32* %152, i32* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i64, i64* %8, align 8
  store i64 %159, i64* %13, align 8
  br label %164

160:                                              ; preds = %145, %136
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %8, align 8
  br label %132

164:                                              ; preds = %158, %132
  %165 = load i64, i64* %13, align 8
  %166 = icmp ne i64 %165, -1
  br i1 %166, label %167, label %215

167:                                              ; preds = %164
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 2, i32* %173, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i32 %174, i32* %180, align 4
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  store i64 %181, i64* %187, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 2, i32* %193, align 8
  %194 = load i64, i64* %6, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  store i32 %195, i32* %201, align 4
  %202 = load i64, i64* %9, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  store i64 %202, i64* %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = load i64, i64* %9, align 8
  %211 = call i32 @send_connect_notification(%struct.TYPE_10__* %209, i64 %210)
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %213 = load i64, i64* %13, align 8
  %214 = call i32 @send_connect_notification(%struct.TYPE_10__* %212, i64 %213)
  br label %215

215:                                              ; preds = %167, %164
  br label %216

216:                                              ; preds = %215, %103
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %102, %98, %88, %87, %67, %66, %32, %31
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i64 @public_key_cmp(i32*, i32*) #1

declare dso_local i32 @send_routing_response(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_TCP_connection_index(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @send_connect_notification(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
